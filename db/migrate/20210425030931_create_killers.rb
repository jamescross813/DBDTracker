class CreateKillers < ActiveRecord::Migration[5.2]
  def change
    create_table :killers do |t|
      t.string :killer_name
      t.string :perk_1
      t.integer :perk_1_tier
      t.string :perk_2
      t.integer :perk_2_tier
      t.string :perk_3
      t.integer :perk_3_tier
      t.string :perk_4
      t.integer :perk_4_tier
      t.integer :user_id
      t.integer :base_killer_id
    end
  end
end
