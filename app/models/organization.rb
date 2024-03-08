class Organization < ApplicationRecord
  validates :name, presence: true
  has_many :user
  has_many :match
  has_many :resource
  has_many :need
end
