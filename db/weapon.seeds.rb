# weapon_proficiency_levels table
WeaponProficiencyLevel.delete_all

WeaponProficiencyLevel.create!([{ :name => "Simple" }])
WeaponProficiencyLevel.create!([{ :name => "Martial" }])
WeaponProficiencyLevel.create!([{ :name => "Exotic" }])

# weapon_groups table
WeaponGroup.delete_all

WeaponGroup.create!([{ :name => "Unarmed Attacks" }])
WeaponGroup.create!([{ :name => "Light Melee" }])
WeaponGroup.create!([{ :name => "One-Handed Melee" }])
WeaponGroup.create!([{ :name => "Two-Handed Melee" }])
WeaponGroup.create!([{ :name => "Ranged" }])

# weapon_types table
WeaponType.delete_all

WeaponType.create!([{ :name => "Piercing" }])
WeaponType.create!([{ :name => "Bludgeoning" }])
WeaponType.create!([{ :name => "Slashing" }])

# weapon_features table
WeaponFeature.delete_all

WeaponFeature.create!([{
                           :name => "Brace",
                           :description => "If you use a readied action to set a brace weapon against a charge, you deal double damage on a successful hit against a charging character."
                       },{
                           :name => "Disarm",
                           :description => "When you use a disarm weapon, you get a +2 bonus on Combat Maneuver Checks to disarm an enemy."
                       },{
                           :name => "Double",
                           :description => "You can use a double weapon to fight as if fighting with two weapons, but if you do, you incur all the normal attack penalties associated with fighting with two weapons, just as if you were using a one-handed weapon and a light weapon. You can choose to wield one end of a double weapon two-handed, but it cannot be used as a double weapon when wielded in this way. Only one end of the weapon can be used in any given round."
                       },{
                           :name => "Monk",
                           :description => "A monk weapon can be used by a monk to perform a flurry of blows."
                       },{
                           :name => "Nonlethal",
                           :description => "These weapons deal nonlethal damage"
                       },{
                           :name => "Reach",
                           :description => "You use a reach weapon to strike opponents 10 feet away, but you can't use it against an adjacent foe."
                       },{
                           :name => "Trip",
                           :description => "You can use a trip weapon to make trip attacks. If you are tripped during your own trip attempt, you can drop the weapon to avoid being tripped."
                       }])