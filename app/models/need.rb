class Need < ApplicationRecord
  belongs_to :type
  has_and_belongs_to_many :resources, join_table: "matches"
  validates :type, presence: true
  validates :name, presence: true
end
