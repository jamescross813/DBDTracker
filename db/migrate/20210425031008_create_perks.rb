class CreatePerks < ActiveRecord::Migration[5.2]
  def change
      create_table :perks do |t|
        t.string :perk_name
        t.string :role
        t.string :dscription
        t.integer :teach_level
        t.integer :survivor_id
      end
  end
end
