class Match < ApplicationRecord
  has_many :resource
  belongs_to :need
  belongs_to :organization
  belongs_to :type
  validates :resource_id, presence: true
  validates :need_id, presence: true
  validates :type_id, presence: true
end
