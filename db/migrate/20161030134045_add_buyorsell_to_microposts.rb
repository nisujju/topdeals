class AddBuyorsellToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :buysell, :text
  end
end
