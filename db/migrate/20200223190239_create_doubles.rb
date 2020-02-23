class CreateDoubles < ActiveRecord::Migration[5.2]
  def change
    create_table :doubles do |t|
      t.text :element
      t.text :iframe1
      t.text :iframe2
      t.string :comment
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
