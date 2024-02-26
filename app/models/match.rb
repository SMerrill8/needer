class Match < ApplicationRecord
  has_many :resource
  has_many :need
  belongs_to :type
  validates :resource, presence: true
  validates :need, presence: true
  validates :type, presence: true
  validate :something_to_validate

private

  def something_to_validate
    if Resource.all.count == 0
      errors.add(:base, "There are no Resources to be validated")
    end
    if Need.all.count == 0
      errors.add(:base, "There are no Needs to be validated")
    end
  end
end
