class HomeController < ApplicationController
  layout 'home'

  def index
    if user_signed_in?
      @users = User.where.not(id: current_user.id)
      @credit_transaction = CreditTransaction.new
    end
  end
end
