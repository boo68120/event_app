class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :service_name
      t.string :comments

      t.timestamps null: false
    end
  end
end
