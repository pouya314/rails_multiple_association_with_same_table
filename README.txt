NOTES:
-----------------

rails g scaffold account name:string

rails g scaffold money_movement amount:decimal from_account:references to_account:references

migration file: 

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


models: money_movement.rb

class MoneyMovement < ApplicationRecord
  belongs_to :from_account, class_name: "Account"
  belongs_to :to_account, class_name: "Account"
end


To make association appear as dropdown:

<div class="field">
<%= form.label :from_account_id %>
<%= form.collection_select :from_account_id, Account.order(:name),:id,:name, include_blank: true %>
</div>

<div class="field">
<%= form.label :to_account_id %>
<%= form.collection_select :to_account_id, Account.order(:name),:id,:name, include_blank: true %>
</div>

