class CreateHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :histories do |t|
      t.boolean :finflg, default: false, null: false
      t.timestamps
    end
  end
end
