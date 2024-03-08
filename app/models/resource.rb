class Resource < ApplicationRecord
  belongs_to :type
  belongs_to :organization
  has_many :needs, :through => "matches"
  validates :type, presence: true
  validates :name, presence: true
end
