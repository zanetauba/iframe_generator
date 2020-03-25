class RemoveCommentsFromTriples < ActiveRecord::Migration[5.2]
  def change
    remove_column :triples, :comment
  end
end
