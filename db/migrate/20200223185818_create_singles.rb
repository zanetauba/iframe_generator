class CreateSingles < ActiveRecord::Migration[5.2]
  def change
    create_table :singles do |t|
      t.text :element
      t.text :iframe
      t.string :comment
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
