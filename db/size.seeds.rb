Size.delete_all

Size.create!([{
                  :name => "Fine",
                  :armor_class_modifier => 8,
                  :combat_maneuver_modifier => -8,
                  :stealth_modifier => 16,
                  :attack_modifier => 8,
              }])

Size.create!([{
                  :name => "Diminutive",
                  :armor_class_modifier => 4,
                  :combat_maneuver_modifier => -4,
                  :stealth_modifier => 12,
                  :attack_modifier => 4,
              }])

Size.create!([{
                  :name => "Tiny",
                  :armor_class_modifier => 2,
                  :combat_maneuver_modifier => -2,
                  :stealth_modifier => 8,
                  :attack_modifier => 2,
              }])

Size.create!([{
                  :name => "Small",
                  :armor_class_modifier => 1,
                  :combat_maneuver_modifier => -1,
                  :stealth_modifier => 4,
                  :attack_modifier => 1,
              }])

Size.create!([{
                  :name => "Medium",
                  :armor_class_modifier => 0,
                  :combat_maneuver_modifier => 0,
                  :stealth_modifier => 0,
                  :attack_modifier => 0,
              }])

Size.create!([{
                  :name => "Large",
                  :armor_class_modifier => -1,
                  :combat_maneuver_modifier => 1,
                  :stealth_modifier => -4,
                  :attack_modifier => -1,
              }])

Size.create!([{
                  :name => "Huge",
                  :armor_class_modifier => -2,
                  :combat_maneuver_modifier => 2,
                  :stealth_modifier => -8,
                  :attack_modifier => -2,
              }])

Size.create!([{
                  :name => "Gargantuan",
                  :armor_class_modifier => -4,
                  :combat_maneuver_modifier => 4,
                  :stealth_modifier => -12,
                  :attack_modifier => -4,
              }])

Size.create!([{
                  :name => "Colossal",
                  :armor_class_modifier => -8,
                  :combat_maneuver_modifier => 8,
                  :stealth_modifier => -16,
                  :attack_modifier => -8,
              }])