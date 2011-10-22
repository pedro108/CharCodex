class Skill < ActiveRecord::Base
  belongs_to :attribute
  
  validates_presence_of :name, :attribute_id
end
