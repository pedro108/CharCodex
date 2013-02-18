# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

=begin
puts "Populando a tabela -dice-"
load File.expand_path('../dice.seeds.rb', __FILE__)

puts "Populando a tabela -levels-"
load File.expand_path('../level.seeds.rb', __FILE__)

puts "Populando a tabela -alignments-"
load File.expand_path('../alignment.seeds.rb', __FILE__)

puts "Populando a tabela -attributes-"
load File.expand_path('../attribute.seeds.rb', __FILE__)

puts "Populando a tabela -skills-"
load File.expand_path('../skill.seeds.rb', __FILE__)

puts "Populando a tabela -sizes-"
load File.expand_path('../size.seeds.rb', __FILE__)

puts "Populando a tabela -BonusSpells-"
load File.expand_path('../bonus_spell.seeds.rb', __FILE__)

puts "Populando a tabela -Spell school-"
puts "Populando a tabela -Spell descriptor-"
load File.expand_path('../spell_school.seeds.rb', __FILE__)


puts "Populando a tabela -Languages-"
load File.expand_path('../language.seeds.rb', __FILE__)

puts "Populando a tabela -Feat types-"
load File.expand_path('../feat_type.seeds.rb', __FILE__)
=end

puts "Populando a tabela -Price type-"
puts "Populando a tabela -Armor type-"
puts "Populando a tabela -Equipment slot-"
puts "Populando a tabela -Gear category-"
load File.expand_path('../equipment.seeds.rb', __FILE__)

puts "Populando a tabela -Weapon proficiency level-"
puts "Populando a tabela -Weapon group-"
puts "Populando a tabela -Weapon type-"
puts "Populando a tabela -Weapon feature-"
load File.expand_path('../weapon.seeds.rb', __FILE__)

