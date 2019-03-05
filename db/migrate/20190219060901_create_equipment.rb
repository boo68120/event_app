class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :equipment_no
      t.integer :equipment_type_id

      t.timestamps null: false
    end
  end
end
