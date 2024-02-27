module MatchesHelper
  def something_to_match
    if Resource.all.count == 0
      errors.add(:base, "There are no Resources to be validated")
    end
    if Need.all.count == 0
      errors.add(:base, "There are no Needs to be validated")
    end
  end
end
