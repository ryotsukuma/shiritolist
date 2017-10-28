class RemoveBooleanFromHistories < ActiveRecord::Migration[5.0]
  def change
    remove_column :histories, :boolean, :string
    remove_column :histories, :finflg, :string
  end
end
