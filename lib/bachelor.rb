def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |contestants|
    if contestants["status"] == "Winner"
      name_array = contestants["name"].split(" ")
      return name_array[0]
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |k, v|
    v.each do |k2|
      if k2["occupation"] == occupation
        return k2["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  hometown_count = 0
  data.each do |k, v|
    v.each do |k2|
      if k2["hometown"] == hometown
        hometown_count += 1
      end
    end
  end
  return hometown_count
end

def get_occupation(data, hometown)
  # code here
  data.each do |k, v|
    v.each do |k2|
      if k2["hometown"] == hometown
        return k2["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  # contestant_count = 0
  total_age = 0
  data[season].each do |contestants|
    total_age += contestants["age"].to_f
    # contestant_count += 1
  end
  return (total_age / data[season].length).round
end