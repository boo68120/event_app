class ChangeAllDatatypesInEvents < ActiveRecord::Migration
  def change
    change_column :events, :code, :integer
    change_column :events, :loaded, :boolean
  end
end
