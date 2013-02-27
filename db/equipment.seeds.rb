# price_types table
PriceType.delete_all

PriceType.create!([{
                      :name => "CP",
                      :description => "Copper pieces",
                      :priority => "1"
                   }])

PriceType.create!([{
                       :name => "SP",
                       :description => "Silver pieces",
                       :priority => "2"
                   }])

PriceType.create!([{
                       :name => "GP",
                       :description => "Gold pieces",
                       :priority => "3"
                   }])

PriceType.create!([{
                       :name => "PP",
                       :description => "Platinum pieces",
                       :priority => "4"
                   }])

# armor_types table
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

#equipment_slots table
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
                           :name => "Two Hands"
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

#equipment_types table
EquipmentType.delete_all

EquipmentType.create!([{
                           :name => "Armor"
                       }])
EquipmentType.create!([{
                           :name => "Shield"
                       }])
EquipmentType.create!([{
                           :name => "Melee Weapon"
                       }])
EquipmentType.create!([{
                           :name => "Ranged Weapon"
                       }])

#gear_categories table
GearCategory.delete_all

GearCategory.create!([{
                        :name => "Adventuring Gear"
                      }
                     ])

GearCategory.create!([{
                        :name => "Special substances and items"
                      }
                     ])

GearCategory.create!([{
                        :name => "Tools and skill kits"
                      }
                     ])

GearCategory.create!([{
                        :name => "Clothing"
                      }
                     ])

GearCategory.create!([{
                        :name => "Food, drink and lodging"
                      }
                     ])

GearCategory.create!([{
                        :name => "Mounts and related gear"
                      }
                     ])

GearCategory.create!([{
                        :name => "Transport"
                      }
                     ])

GearCategory.create!([{
                        :name => "Services"
                      }
                     ])

GearCategory.create!([{
                        :name => "Spellcasting"
                      }
                     ])