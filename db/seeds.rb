# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

puts "Populando a tabela -levels-"

Level.delete_all

Level.create!([{
    :level => 1,
    :fastXP => 0,
    :mediumXP => 0,
    :slowXP => 0,
    :goodSavingThrow => 2,
    :badSavingThrow => 0
}])

Level.create!([{
    :level => 2,
    :fastXP => 1300,
    :mediumXP => 2000,
    :slowXP => 3000,
    :goodSavingThrow => 3,
    :badSavingThrow => 0
}])

Level.create!([{
    :level => 3,
    :fastXP => 3300,
    :mediumXP => 5000,
    :slowXP => 7500,
    :goodSavingThrow => 3,
    :badSavingThrow => 1
}])

Level.create!([{
    :level => 4,
    :fastXP => 6000,
    :mediumXP => 9000,
    :slowXP => 14000,
    :goodSavingThrow => 4,
    :badSavingThrow => 1
}])

Level.create!([{
    :level => 5,
    :fastXP => 10000,
    :mediumXP => 15000,
    :slowXP => 23000,
    :goodSavingThrow => 4,
    :badSavingThrow => 1
}])

Level.create!([{
    :level => 6,
    :fastXP => 15000,
    :mediumXP => 23000,
    :slowXP => 35000,
    :goodSavingThrow => 5,
    :badSavingThrow => 2
}])

Level.create!([{
    :level => 7,
    :fastXP => 23000,
    :mediumXP => 35000,
    :slowXP => 53000,
    :goodSavingThrow => 5,
    :badSavingThrow => 2
}])

Level.create!([{
    :level => 8,
    :fastXP => 34000,
    :mediumXP => 51000,
    :slowXP => 77000,
    :goodSavingThrow => 6,
    :badSavingThrow => 2
}])

Level.create!([{
    :level => 9,
    :fastXP => 50000,
    :mediumXP => 75000,
    :slowXP => 115000,
    :goodSavingThrow => 6,
    :badSavingThrow => 3
}])

Level.create!([{
    :level => 10,
    :fastXP => 71000,
    :mediumXP => 105000,
    :slowXP => 160000,
    :goodSavingThrow => 7,
    :badSavingThrow => 3
}])

Level.create!([{
    :level => 11,
    :fastXP => 105000,
    :mediumXP => 155000,
    :slowXP => 235000,
    :goodSavingThrow => 7,
    :badSavingThrow => 3
}])

Level.create!([{
    :level => 12,
    :fastXP => 145000,
    :mediumXP => 220000,
    :slowXP => 330000,
    :goodSavingThrow => 8,
    :badSavingThrow => 4
}])

Level.create!([{
    :level => 13,
    :fastXP => 210000,
    :mediumXP => 315000,
    :slowXP => 475000,
    :goodSavingThrow => 8,
    :badSavingThrow => 4
}])

Level.create!([{
    :level => 14,
    :fastXP => 295000,
    :mediumXP => 445000,
    :slowXP => 665000,
    :goodSavingThrow => 9,
    :badSavingThrow => 4
}])

Level.create!([{
    :level => 15,
    :fastXP => 425000,
    :mediumXP => 635000,
    :slowXP => 955000,
    :goodSavingThrow => 9,
    :badSavingThrow => 5
}])

Level.create!([{
    :level => 16,
    :fastXP => 600000,
    :mediumXP => 890000,
    :slowXP => 1350000,
    :goodSavingThrow => 10,
    :badSavingThrow => 5
}])

Level.create!([{
    :level => 17,
    :fastXP => 850000,
    :mediumXP => 1300000,
    :slowXP => 1900000,
    :goodSavingThrow => 10,
    :badSavingThrow => 5
}])

Level.create!([{
    :level => 18,
    :fastXP => 1200000,
    :mediumXP => 1800000,
    :slowXP => 2700000,
    :goodSavingThrow => 11,
    :badSavingThrow => 6
}])

Level.create!([{
    :level => 19,
    :fastXP => 1700000,
    :mediumXP => 2550000,
    :slowXP => 3850000,
    :goodSavingThrow => 11,
    :badSavingThrow => 6
}])

Level.create!([{
    :level => 20,
    :fastXP => 2400000,
    :mediumXP => 3600000,
    :slowXP => 5350000,
    :goodSavingThrow => 12,
    :badSavingThrow => 6
}])

puts "Populando a tabela -alignments-"

Alignment.delete_all

Alignment.create!([{
    :name => "Lawful Good"
}])

Alignment.create!([{
    :name => "Lawful Neutral"
}])

Alignment.create!([{
    :name => "Lawful Evil"
}])

Alignment.create!([{
    :name => "Neutral Good"
}])

Alignment.create!([{
    :name => "True Neutral"
}])

Alignment.create!([{
    :name => "Neutral Evil"
}])

Alignment.create!([{
    :name => "Chaotic Good"
}])

Alignment.create!([{
    :name => "Chaotic Neutral"
}])

Alignment.create!([{
    :name => "Chaotic Evil"
}])

puts "Populando a tabela -attributes-"

Attribute.delete_all

Attribute.create!([{
    :name => "Strength"
}])

Attribute.create!([{
    :name => "Constitution"
}])

Attribute.create!([{
    :name => "Dexterity"
}])

Attribute.create!([{
    :name => "Intelligence"
}])

Attribute.create!([{
    :name => "Wisdom"
}])

Attribute.create!([{
    :name => "Charisma"
}])

puts "Populando a tabela -skills-"

Skill.delete_all

Skill.create!([{
    :name => "Acrobatics",
    :attribute => Attribute.find_by_name("Dexterity")
}])

Skill.create!([{
    :name => "Appraise",
    :attribute => Attribute.find_by_name("Intelligence")
}])

Skill.create!([{
    :name => "Bluff",
    :attribute => Attribute.find_by_name("Charisma")
}])

Skill.create!([{
    :name => "Climb",
    :attribute => Attribute.find_by_name("Strength")
}])

Skill.create!([{
    :name => "Craft",
    :attribute => Attribute.find_by_name("Intelligence"),
    :have_subskill => true
}])

Skill.create!([{
    :name => "Diplomacy",
    :attribute => Attribute.find_by_name("Charisma")
}])

Skill.create!([{
    :name => "Disable Device",
    :attribute => Attribute.find_by_name("Dexterity")
}])

Skill.create!([{
    :name => "Disguise",
    :attribute => Attribute.find_by_name("Charisma")
}])

Skill.create!([{
    :name => "Escape Artist",
    :attribute => Attribute.find_by_name("Dexterity")
}])

Skill.create!([{
    :name => "Fly",
    :attribute => Attribute.find_by_name("Dexterity")
}])

Skill.create!([{
    :name => "Handle Animal",
    :attribute => Attribute.find_by_name("Charisma")
}])

Skill.create!([{
    :name => "Heal",
    :attribute => Attribute.find_by_name("Wisdom")
}])

Skill.create!([{
    :name => "Intimidate",
    :attribute => Attribute.find_by_name("Charisma")
}])

Skill.create!([{
    :name => "Knowledge (arcana)",
    :attribute => Attribute.find_by_name("Intelligence")
}])

Skill.create!([{
    :name => "Knowledge (Dungeoneering)",
    :attribute => Attribute.find_by_name("Intelligence")
}])

Skill.create!([{
    :name => "Knowledge (Engineering)",
    :attribute => Attribute.find_by_name("Intelligence")
}])

Skill.create!([{
    :name => "Knowledge (geography)",
    :attribute => Attribute.find_by_name("Intelligence")
}])

Skill.create!([{
    :name => "Knowledge (history)",
    :attribute => Attribute.find_by_name("Intelligence")
}])

Skill.create!([{
    :name => "Knowledge (local)",
    :attribute => Attribute.find_by_name("Intelligence")
}])

Skill.create!([{
    :name => "Knowledge (nature)",
    :attribute => Attribute.find_by_name("Intelligence")
}])

Skill.create!([{
    :name => "Knowledge (nobility)",
    :attribute => Attribute.find_by_name("Intelligence")
}])

Skill.create!([{
    :name => "Knowledge (planes)",
    :attribute => Attribute.find_by_name("Intelligence")
}])

Skill.create!([{
    :name => "Knowledge (religion)",
    :attribute => Attribute.find_by_name("Intelligence")
}])

Skill.create!([{
    :name => "Linguistics",
    :attribute => Attribute.find_by_name("Intelligence")
}])

Skill.create!([{
    :name => "Perception",
    :attribute => Attribute.find_by_name("Wisdom")
}])

Skill.create!([{
    :name => "Perform",
    :attribute => Attribute.find_by_name("Charisma"),
    :have_subskill => true
}])

Skill.create!([{
    :name => "Profession",
    :attribute => Attribute.find_by_name("Wisdom"),
    :have_subskill => true
}])

Skill.create!([{
    :name => "Ride",
    :attribute => Attribute.find_by_name("Dexterity")
}])

Skill.create!([{
    :name => "Sense Motive",
    :attribute => Attribute.find_by_name("Wisdom")
}])

Skill.create!([{
    :name => "Sleight of Hand",
    :attribute => Attribute.find_by_name("Dexterity")
}])

Skill.create!([{
    :name => "Spellcraft",
    :attribute => Attribute.find_by_name("Intelligence")
}])

Skill.create!([{
    :name => "Stealth",
    :attribute => Attribute.find_by_name("Dexterity")
}])

Skill.create!([{
    :name => "Survival",
    :attribute => Attribute.find_by_name("Wisdom")
}])

Skill.create!([{
    :name => "Swim",
    :attribute => Attribute.find_by_name("Strength")
}])

Skill.create!([{
    :name => "Use Magic Device",
    :attribute => Attribute.find_by_name("Charisma")
}])

puts "Populando a tabela -sizes-"

Size.delete_all

Size.create!([{
    :name => "Fine"
}])

Size.create!([{
    :name => "Diminutive"
}])

Size.create!([{
    :name => "Tiny"
}])

Size.create!([{
    :name => "Small"
}])

Size.create!([{
    :name => "Medium"
}])

Size.create!([{
    :name => "Large"
}])

Size.create!([{
    :name => "Huge"
}])

Size.create!([{
    :name => "Gargantuan"
}])

Size.create!([{
    :name => "Colossal"
}])

puts "Populando a tabela -Armor type-"

ArmorType.delete_all

ArmorType.create!([{
    :name => "Light armor"
}])

ArmorType.create!([{
    :name => "Medium armor"
}])

ArmorType.create!([{
    :name => "Heavy armor"
}])

ArmorType.create!([{
    :name => "Shield"
}])

puts "Populando a tabela -Equipment slot-"

EquipmentSlot.delete_all

EquipmentSlot.create!([{
    :name => "Body"
}])

EquipmentSlot.create!([{
    :name => "Waist"
}])

EquipmentSlot.create!([{
    :name => "Armor"
}])

EquipmentSlot.create!([{
    :name => "Chest"
}])

EquipmentSlot.create!([{
    :name => "Eyes"
}])

EquipmentSlot.create!([{
    :name => "Feet"
}])

EquipmentSlot.create!([{
    :name => "Hands"
}])

EquipmentSlot.create!([{
    :name => "Head"
}])

EquipmentSlot.create!([{
    :name => "Headband"
}])

EquipmentSlot.create!([{
    :name => "Neck"
}])

EquipmentSlot.create!([{
    :name => "Ring"
}])

EquipmentSlot.create!([{
    :name => "Shield"
}])

EquipmentSlot.create!([{
    :name => "Shoulders"
}])

EquipmentSlot.create!([{
    :name => "Wrists"
}])

puts "Populando a tabela -BonusSpells-"

BonusSpell.delete_all

BonusSpell.create!([{
    :ability_score => 12,
    :bonus => 1,
    :spell_level => 1
}])

BonusSpell.create!([{
    :ability_score => 13,
    :bonus => 1,
    :spell_level => 1
}])

BonusSpell.create!([{
    :ability_score => 14,
    :bonus => 1,
    :spell_level => 1
}])

BonusSpell.create!([{
    :ability_score => 14,
    :bonus => 1,
    :spell_level => 2
}])

BonusSpell.create!([{
    :ability_score => 15,
    :bonus => 1,
    :spell_level => 1
}])

BonusSpell.create!([{
    :ability_score => 15,
    :bonus => 1,
    :spell_level => 2
}])

BonusSpell.create!([{
    :ability_score => 16,
    :bonus => 1,
    :spell_level => 1
}])

BonusSpell.create!([{
    :ability_score => 16,
    :bonus => 1,
    :spell_level => 2
}])

BonusSpell.create!([{
    :ability_score => 16,
    :bonus => 1,
    :spell_level => 3
}])

BonusSpell.create!([{
    :ability_score => 17,
    :bonus => 1,
    :spell_level => 1
}])

BonusSpell.create!([{
    :ability_score => 17,
    :bonus => 1,
    :spell_level => 2
}])

BonusSpell.create!([{
    :ability_score => 17,
    :bonus => 1,
    :spell_level => 3
}])

BonusSpell.create!([{
    :ability_score => 18,
    :bonus => 1,
    :spell_level => 1
}])

BonusSpell.create!([{
    :ability_score => 18,
    :bonus => 1,
    :spell_level => 2
}])

BonusSpell.create!([{
    :ability_score => 18,
    :bonus => 1,
    :spell_level => 3
}])

BonusSpell.create!([{
    :ability_score => 18,
    :bonus => 1,
    :spell_level => 4
}])

BonusSpell.create!([{
    :ability_score => 19,
    :bonus => 1,
    :spell_level => 1
}])

BonusSpell.create!([{
    :ability_score => 19,
    :bonus => 1,
    :spell_level => 2
}])

BonusSpell.create!([{
    :ability_score => 19,
    :bonus => 1,
    :spell_level => 3
}])

BonusSpell.create!([{
    :ability_score => 19,
    :bonus => 1,
    :spell_level => 4
}])

BonusSpell.create!([{
    :ability_score => 20,
    :bonus => 2,
    :spell_level => 1
}])

BonusSpell.create!([{
    :ability_score => 20,
    :bonus => 1,
    :spell_level => 2
}])

BonusSpell.create!([{
    :ability_score => 20,
    :bonus => 1,
    :spell_level => 3
}])

BonusSpell.create!([{
    :ability_score => 20,
    :bonus => 1,
    :spell_level => 4
}])

BonusSpell.create!([{
    :ability_score => 20,
    :bonus => 1,
    :spell_level => 5
}])

BonusSpell.create!([{
    :ability_score => 21,
    :bonus => 2,
    :spell_level => 1
}])

BonusSpell.create!([{
    :ability_score => 21,
    :bonus => 1,
    :spell_level => 2
}])

BonusSpell.create!([{
    :ability_score => 21,
    :bonus => 1,
    :spell_level => 3
}])

BonusSpell.create!([{
    :ability_score => 21,
    :bonus => 1,
    :spell_level => 4
}])

BonusSpell.create!([{
    :ability_score => 21,
    :bonus => 1,
    :spell_level => 5
}])

BonusSpell.create!([{
    :ability_score => 22,
    :bonus => 2,
    :spell_level => 1
}])

BonusSpell.create!([{
    :ability_score => 22,
    :bonus => 2,
    :spell_level => 2
}])

BonusSpell.create!([{
    :ability_score => 22,
    :bonus => 1,
    :spell_level => 3
}])

BonusSpell.create!([{
    :ability_score => 22,
    :bonus => 1,
    :spell_level => 4
}])

BonusSpell.create!([{
    :ability_score => 22,
    :bonus => 1,
    :spell_level => 5
}])

BonusSpell.create!([{
    :ability_score => 22,
    :bonus => 1,
    :spell_level => 6
}])

BonusSpell.create!([{
    :ability_score => 23,
    :bonus => 2,
    :spell_level => 1
}])

BonusSpell.create!([{
    :ability_score => 23,
    :bonus => 2,
    :spell_level => 2
}])

BonusSpell.create!([{
    :ability_score => 23,
    :bonus => 1,
    :spell_level => 3
}])

BonusSpell.create!([{
    :ability_score => 23,
    :bonus => 1,
    :spell_level => 4
}])

BonusSpell.create!([{
    :ability_score => 23,
    :bonus => 1,
    :spell_level => 5
}])

BonusSpell.create!([{
    :ability_score => 23,
    :bonus => 1,
    :spell_level => 6
}])

BonusSpell.create!([{
    :ability_score => 24,
    :bonus => 2,
    :spell_level => 1
}])

BonusSpell.create!([{
    :ability_score => 24,
    :bonus => 2,
    :spell_level => 2
}])

BonusSpell.create!([{
    :ability_score => 24,
    :bonus => 2,
    :spell_level => 3
}])

BonusSpell.create!([{
    :ability_score => 24,
    :bonus => 1,
    :spell_level => 4
}])

BonusSpell.create!([{
    :ability_score => 24,
    :bonus => 1,
    :spell_level => 5
}])

BonusSpell.create!([{
    :ability_score => 24,
    :bonus => 1,
    :spell_level => 6
}])

BonusSpell.create!([{
    :ability_score => 24,
    :bonus => 1,
    :spell_level => 7
}])

BonusSpell.create!([{
    :ability_score => 25,
    :bonus => 2,
    :spell_level => 1
}])

BonusSpell.create!([{
    :ability_score => 25,
    :bonus => 2,
    :spell_level => 2
}])

BonusSpell.create!([{
    :ability_score => 25,
    :bonus => 2,
    :spell_level => 3
}])

BonusSpell.create!([{
    :ability_score => 25,
    :bonus => 1,
    :spell_level => 4
}])

BonusSpell.create!([{
    :ability_score => 25,
    :bonus => 1,
    :spell_level => 5
}])

BonusSpell.create!([{
    :ability_score => 25,
    :bonus => 1,
    :spell_level => 6
}])

BonusSpell.create!([{
    :ability_score => 25,
    :bonus => 1,
    :spell_level => 7
}])

BonusSpell.create!([{
    :ability_score => 26,
    :bonus => 2,
    :spell_level => 1
}])

BonusSpell.create!([{
    :ability_score => 26,
    :bonus => 2,
    :spell_level => 2
}])

BonusSpell.create!([{
    :ability_score => 26,
    :bonus => 2,
    :spell_level => 3
}])

BonusSpell.create!([{
    :ability_score => 26,
    :bonus => 2,
    :spell_level => 4
}])

BonusSpell.create!([{
    :ability_score => 26,
    :bonus => 1,
    :spell_level => 5
}])

BonusSpell.create!([{
    :ability_score => 26,
    :bonus => 1,
    :spell_level => 6
}])

BonusSpell.create!([{
    :ability_score => 26,
    :bonus => 1,
    :spell_level => 7
}])

BonusSpell.create!([{
    :ability_score => 26,
    :bonus => 1,
    :spell_level => 8
}])

BonusSpell.create!([{
    :ability_score => 27,
    :bonus => 2,
    :spell_level => 1
}])

BonusSpell.create!([{
    :ability_score => 27,
    :bonus => 2,
    :spell_level => 2
}])

BonusSpell.create!([{
    :ability_score => 27,
    :bonus => 2,
    :spell_level => 3
}])

BonusSpell.create!([{
    :ability_score => 27,
    :bonus => 2,
    :spell_level => 4
}])

BonusSpell.create!([{
    :ability_score => 27,
    :bonus => 1,
    :spell_level => 5
}])

BonusSpell.create!([{
    :ability_score => 27,
    :bonus => 1,
    :spell_level => 6
}])

BonusSpell.create!([{
    :ability_score => 27,
    :bonus => 1,
    :spell_level => 7
}])

BonusSpell.create!([{
    :ability_score => 27,
    :bonus => 1,
    :spell_level => 8
}])

