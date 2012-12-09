module ArmorsHelper


  def equipment_slot_form_column(record, options)
    options[:selected] = record.equipment_slot if record.equipment_slot
    select :record, :equipment_slot,
           [[t('select'), '']] + EquipmentSlot.where("name = 'Armor' OR name = 'Shield'").collect {|i| [i.name, i.id] },
           options, options
  end
end
