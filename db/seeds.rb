user1 = User.create(:user_name => "skittles123", :password => "iluvskittles", :email => "skittles123@gmail.com")

killer1 = Killer.create(:killer_name => "The Nightmare", 
    :perk_1 => "Nurses' Calling", :perk_1_tier => 2, 
    :perk_2 => "Barbeque and Chilli", :perk_2_tier => 3,
    :perk_3 => "Hex: No One Escapes Death", :perk_3_tier => 2, 
    :perk_4 => "Hex: Ruin", :perk_4_tier => 1)

survivor1 = Survivor.create(:survivor_name => "Dwight", 
    :perk_1 => "Technician", :perk_1_tier => 3, 
    :perk_2 => "Self Care", :perk_2_tier => 3,
    :perk_3 => "Urban Evasion", :perk_3_tier => 2, 
    :perk_4 => "Calm Spirit", :perk_4_tier => 2)

currency1 = Currency.create(:currency_name => "Auric Cells", :amount => 9500)
