class Match < ApplicationRecord
  has_many :resource
  has_many :need
  belongs_to :type
  validates :resource, presence: true
  validates :need, presence: true
  validates :type, presence: true

end
