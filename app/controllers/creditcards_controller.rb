class CreditcardsController < ApplicationController
    def create
        @user = User.find(params[:user_id])
        @user.creditcards.create(creditcard_params)
        redirect_to user_path(@user)
    end
    
    def edit
        @user = User.find(params[:user_id])
        @creditcard = @user.creditcards.find(params[:id])
    end
    
    def update
        @creditcard = Creditcard.find(params[:id])
    
        if @creditcard.update(creditcard_params)
        redirect_to creditcards_path
        else
        render :edit, status: :unprocessable_entity
        end
    end
    
    def destroy
        @user = User.find(params[:user_id])
        @creditcard = @user.creditcards.find(params[:id])
        @creditcard.destroy
    
        redirect_to user_path(@user), status: :see_other
    end
    
    private
    def creditcard_params
        params.require(:creditcard).permit(:number, :expiration, :cvv, :user_id)
    end
end
