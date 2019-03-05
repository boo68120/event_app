class AddDriveridInEvents < ActiveRecord::Migration
  def change
    add_column :events, :driver_id, :integer
  end
end
