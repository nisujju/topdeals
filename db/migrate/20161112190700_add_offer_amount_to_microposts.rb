class AddOfferAmountToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :amount, :integer
  end
end
