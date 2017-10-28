class RemoveAsFromHistories < ActiveRecord::Migration[5.0]
  def change
    remove_column :histories, :as, :string
  end
end
