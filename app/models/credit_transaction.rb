class CreditTransaction < ApplicationRecord

  belongs_to :sender, :foreign_key => :sender_id, class_name: 'User'
  belongs_to :recipient, :foreign_key => :recipient_id, class_name: 'User'

  validate :check_valid_credits

  after_save :update_sender_credits

  validates_numericality_of :credits, greater_than: 0

  private
    def check_valid_credits
      self.errors.add(:credits, 'must not be greater than your credits') if self.sender.credits < self.credits
    end

    def update_sender_credits
      sender_account = self.sender
      recipient_account = self.recipient
      User.transaction do
        sender_account.credits -= self.credits
        sender_account.save!

        recipient_account.credits += self.credits
        recipient_account.save!
      end
    rescue ActiveRecord::RecordInvalid => exception
      self.delete
    end

end
