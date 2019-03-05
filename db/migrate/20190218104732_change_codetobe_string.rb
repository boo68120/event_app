class ChangeCodetobeString < ActiveRecord::Migration
  def change
    change_column :events, :code, :string
  end
end
