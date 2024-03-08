class Need < ApplicationRecord
  belongs_to :type
  belongs_to :organization
  has_many :resources, :through => "matches"
  validates :type, presence: true
  validates :name, presence: true
end
