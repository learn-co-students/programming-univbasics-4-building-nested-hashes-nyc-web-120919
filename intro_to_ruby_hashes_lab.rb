def base_hash
  # Remember implicit return! We're returning this new Hash _without_ the
  # keyword "return." Nice and neat.
	{railroads: {}}
end

def monopoly_with_second_tier
  base_hash_1 = base_hash()
  base_hash_1[:railroads] = {:pieces => 4}
  return base_hash_1
end

def monopoly_with_third_tier
  hash_2 = monopoly_with_second_tier()
  hash_2[:railroads][:rent_in_dollars] = {one_piece_owned: 25, two_pieces_owned: 50, three_pieces_owned: 100, four_pieces_owned: 200}
  hash_2[:railroads][:names] = {reading_railroad: {}, pennsylvania_railroad: {}, b_and_o_railroad: {}, shortline_railroad: {}}
  return hash_2
end

def monopoly_with_fourth_tier
  hash_3 = monopoly_with_third_tier()
  hash_3[:railroads][:names][:reading_railroad]["mortgage_value"] = "$100"
  hash_3[:railroads][:names][:pennsylvania_railroad]["mortgage_value"] = "$200"
  hash_3[:railroads][:names][:b_and_o_railroad]["mortgage_value"] = "$400"
  hash_3[:railroads][:names][:shortline_railroad]["mortgage_value"] = "$800"
  return hash_3
end
