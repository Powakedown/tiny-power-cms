# == Schema Information
#
# Table name: elements
#
#  id         :bigint           not null, primary key
#  placement  :string
#  text       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  section_id :bigint           not null
#
# Indexes
#
#  index_elements_on_section_id  (section_id)
#
# Foreign Keys
#
#  fk_rails_...  (section_id => sections.id)
#
class Element < ApplicationRecord
  validates :placement, presence: true

  belongs_to :section

  has_one_attached :image
  has_one_attached :background_image
end
