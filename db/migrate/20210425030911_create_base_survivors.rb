class CreateBaseSurvivors < ActiveRecord::Migration[5.2]
  def change
    create_table :base_survivors do |t|
      t.string :survivor_name
      t.string :role
      t.string :overview
      t.string :lore
      t.string :base_perks
    end
  end
end
