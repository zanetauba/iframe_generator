class RemoveUserIdFromSingles < ActiveRecord::Migration[5.2]
  def change
    remove_reference :singles, :user, index: true, foreign_key: true
  end
end
