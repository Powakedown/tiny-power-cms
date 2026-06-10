# == Schema Information
#
# Table name: sections
#
#  id         :bigint           not null, primary key
#  layout     :string
#  published  :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Section < ApplicationRecord
  validates :layout, presence: true

  has_many :elements, dependent: :destroy
end
