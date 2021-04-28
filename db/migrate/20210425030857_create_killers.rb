class CreateKillers < ActiveRecord::Migration[5.2]
  def change
    create_table :killers do |t|
      t.string :killer_name
      t.string :realm
      t.string :power
      t.string :weapon
      t.string :speed
      t.string :terror_radius
      t.string :height
      t.string :difficulty
      t.string :overview
      t.string :lore
      t.string :dlc
      t.string :base_perks
    end
  end
end
