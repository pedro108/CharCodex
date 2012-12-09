class MagicItemGroup < ActiveRecord::Base
  has_many :magic_items

  validates_presence_of :name
end
