class Resource < ApplicationRecord
  has_many :match
  belongs_to :type
  validates :type, presence: true
  validates :name, presence: true
end
