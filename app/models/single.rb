class Single < ApplicationRecord
  validates :element, :iframe, presence: true
end
