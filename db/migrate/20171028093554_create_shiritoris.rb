class CreateShiritoris < ActiveRecord::Migration[5.0]
  def change
    create_table :shiritoris do |t|
      t.string :word
      t.string :name
      t.references :history, foreign_key: true

      t.timestamps
    end
  end
end
