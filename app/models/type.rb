class Type < ApplicationRecord
  belongs_to :supertype
  validates :supertype, presence: true
  validates :name, presence: true
end
