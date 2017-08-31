class CreditTransactionsController < ApplicationController
  before_action :authenticate_user!

  def index
    @credit_transactions = current_user.credit_transactions
  end

  def create
    @credit_transaction = CreditTransaction.new(credit_transaction_params)
    @credit_transaction.sender_id = current_user.id
    respond_to do |format|
      if @credit_transaction.save
        format.html { redirect_to @credit_transaction, notice: "Save process completed!" }
        format.js
      else
        format.html {
          flash.now[:notice]="Save process coudn't be completed!"
          render :new
        }
        format.js { render 'new'}
      end
    end
  end

  private

  def credit_transaction_params
    params.require(:credit_transaction).permit(:recipient_id, :credits)
  end

end
