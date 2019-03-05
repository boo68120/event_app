class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :code
      t.string :location
      t.string :driver
      t.string :loaded

      t.timestamps null: false
    end
  end
end
