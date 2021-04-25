class CreateKillerPerks < ActiveRecord::Migration[5.2]
  def change
    create_table :killer_perks do |t|
      t.string :perk_name
      t.string :role
      t.string :dscription
      t.integer :teach_level
      t.integer :killer_id
    end
  end
end
