class AddequipmentIdInEvent < ActiveRecord::Migration
  def change
    add_column :events, :equipment_id, :integer
  end
end
