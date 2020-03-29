class Triple < ApplicationRecord
  validates :element, :iframe1, :iframe2, :iframe3, presence: true
end
