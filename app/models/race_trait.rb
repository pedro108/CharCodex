class RaceTrait < ActiveRecord::Base
  belongs_to :race
  belongs_to :feat

  def trait
    self.feat
  end
end
