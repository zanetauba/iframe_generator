class RemoveUserIdFromTriples < ActiveRecord::Migration[5.2]
  def change
    remove_reference :triples, :user, index: true, foreign_key: true
  end
end
