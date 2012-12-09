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
