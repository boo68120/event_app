class CreateAddequipmentIdInEvents < ActiveRecord::Migration
  def change
    create_table :addequipment_id_in_events do |t|

      t.timestamps null: false
    end
  end
end
