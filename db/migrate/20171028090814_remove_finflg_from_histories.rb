class RemoveFinflgFromHistories < ActiveRecord::Migration[5.0]
  def change
    remove_column :histories, :finflg, :int
  end
end
