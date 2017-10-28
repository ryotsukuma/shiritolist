class AddFinflgToHistories < ActiveRecord::Migration[5.0]
  def change
    add_column :histories, :finflg, :boolean, default: false, null: false
  end
end
