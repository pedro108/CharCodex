module CharacterClassSpellsHelper
  def options_for_association_conditions(association)
    if association.name == :character_class
      { 'character_classes.spellcaster' => true }
    else
      super
    end
  end
end