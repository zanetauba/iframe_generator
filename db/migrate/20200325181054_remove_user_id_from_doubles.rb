class RemoveUserIdFromDoubles < ActiveRecord::Migration[5.2]
  def change
    remove_reference :doubles, :user, index: true, foreign_key: true
  end
end
