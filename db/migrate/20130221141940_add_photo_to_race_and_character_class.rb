class AddPhotoToRaceAndCharacterClass < ActiveRecord::Migration
  def change
    add_attachment :races, :photo
    add_attachment :character_classes, :photo
  end
end
