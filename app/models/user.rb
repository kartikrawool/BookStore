class User < ApplicationRecord
  has_many :creditcards
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable, :validatable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable

  #  validation for email, password, just for presence
  # validates :email, presence: true
  # validates :password, presence: true

  # after_create :on_after_create

  # def on_after_create
  #   # do something after user is created
  #   self.admin ||= false
  # end

end
