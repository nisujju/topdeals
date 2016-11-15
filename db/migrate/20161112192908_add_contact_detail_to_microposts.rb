class AddContactDetailToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :contact_detail, :text
  end
end
