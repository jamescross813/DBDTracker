class CreateSurvivors < ActiveRecord::Migration[5.2]
  def change
    create_table :survivors do |t|
      t.string :name
      t.string :role
      t.string :overview
      t.text :lore
      t.text :difficulty
      t.string :dlc
      t.string :survivor_base_perks
    end
  end
end
 