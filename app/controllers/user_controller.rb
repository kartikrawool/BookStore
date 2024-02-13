class UserController < ApplicationController
    before_action :only => [:index] do
        redirect_to new_user_session_path unless current_user && current_user.admin
        end
    def index
        @user = User.all
      end
    
      def show
        @user = User.find(params[:id])
      end
    
      def edit
        @user = User.find(params[:id])
      end
    
      def update
        @user = User.find(params[:id])
    
        if @user.update(user_params)
            print "User updated successfully"
        #   redirect_to :back
        else
          render :edit, status: :unprocessable_entity
        end
      end
    
      def destroy
        @article = User.find(params[:id])
        @article.destroy
    
        redirect_to root_path, status: :see_other
      end
    
    
      private
      def user_params
        params.require(:user).permit(:username, :email, :phonenumber, :address)
      end
    
    end
    