class AddCreditsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :credits, :float
  end
end
