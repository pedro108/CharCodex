class Skill < ActiveRecord::Base
  belongs_to :attribute
  has_and_belongs_to_many :character_classes
  
  validates_presence_of :name, :attribute_id
end
