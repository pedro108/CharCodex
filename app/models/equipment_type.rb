# Criada para categorizar as propriedades magicas para as armas e armaduras (Armadura, Escudo, Melee e Ranged)
class EquipmentType < ActiveRecord::Base
  validates_presence_of :name
end
