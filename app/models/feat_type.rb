class FeatType < ActiveRecord::Base

  def self.racial_trait
    find_by_name "Racial trait"
  end
end
