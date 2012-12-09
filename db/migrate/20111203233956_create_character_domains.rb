class CreateCharacterDomains < ActiveRecord::Migration
  def self.up
    create_table :character_domains do |t|
      t.integer :character_id, :null => false
      t.integer :domain_id, :null => false
    end
  end

  def self.down
    drop_table :character_domains
  end
end
