class Match < ApplicationRecord
  has_many :resource
  has_many :need
  belongs_to :type
  validates :resource_id, presence: true
  validates :need_id, presence: true
  validates :type_id, presence: true

end
