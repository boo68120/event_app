class RemoveDriverColumnInEvents < ActiveRecord::Migration
  def change
    remove_column :events, :driver
  end
end
