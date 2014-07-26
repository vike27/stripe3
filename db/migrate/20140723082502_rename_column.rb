class RenameColumn < ActiveRecord::Migration
  def change
  	rename_column :charges, :stripe_charge_token, :stripe_card_token
  end
end
