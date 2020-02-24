class CreateMoneyMovements < ActiveRecord::Migration[6.0]
  def change
    create_table :money_movements do |t|
      t.decimal :amount, precision: 10, scale: 2
      t.references :from_account, foreign_key: { to_table: 'accounts' }
      t.references :to_account, foreign_key: { to_table: 'accounts' }

      t.timestamps
    end
  end
end
