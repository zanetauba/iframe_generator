class RemoveCommentsFromSingles < ActiveRecord::Migration[5.2]
  def change
    remove_column :singles, :comment
  end
end
