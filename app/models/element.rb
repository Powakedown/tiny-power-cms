class Element < ApplicationRecord
  validates :placement, presence: true

  belongs_to :section
end
