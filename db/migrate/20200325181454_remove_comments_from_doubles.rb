class RemoveCommentsFromDoubles < ActiveRecord::Migration[5.2]
  def change
    remove_column :doubles, :comment
  end
end
