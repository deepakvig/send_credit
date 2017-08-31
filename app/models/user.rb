class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :credit_transactions, :foreign_key => :sender_id

  DEFAULT_USER_CREDITS = 100

  before_create :set_default_credits

  private
  def set_default_credits
    self.credits = User::DEFAULT_USER_CREDITS
  end

end
