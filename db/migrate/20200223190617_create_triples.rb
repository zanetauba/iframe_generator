class CreateTriples < ActiveRecord::Migration[5.2]
  def change
    create_table :triples do |t|
      t.text :element
      t.text :iframe1
      t.text :iframe2
      t.text :iframe3
      t.string :comment
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
