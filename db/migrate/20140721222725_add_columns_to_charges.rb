class AddColumnsToCharges < ActiveRecord::Migration
  def change
  		add_column :charges, :stripe_charge_token,  :string
  		add_column :charges, :amount,  :decimal
  end
end
