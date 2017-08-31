class CreateCreditTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :credit_transactions do |t|
      t.integer :sender_id
      t.integer :recipient_id
      t.float :credits

      t.timestamps
    end

    add_index :credit_transactions, :sender_id
    add_index :credit_transactions, :recipient_id
  end
end
