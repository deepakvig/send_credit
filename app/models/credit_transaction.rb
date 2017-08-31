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
      user = self.sender
      user.credits = user.credits - self.credits
      user.save

      user = self.recipient
      user.credits = user.credits + self.credits
      user.save
    end

end
