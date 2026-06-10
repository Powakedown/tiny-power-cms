class Section < ApplicationRecord
  validates :layout, presence: true

  has_many :elements, dependent: :destroy
end
