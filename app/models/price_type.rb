class PriceType < ActiveRecord::Base

  def self.default_type
    self.find_by_name("GP")
  end
end
