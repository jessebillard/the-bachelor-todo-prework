def get_first_name_of_season_winner(data, season)
    winner_name = ""
    data[season].each do |i|
        i.each do |k, v|
            if v == "Winner"
                winner_name = i["name"]
            end
        end
    end
winner_name.split(" ")[0]
end

def get_contestant_name(data, occupation)
  contestant_name = ""
  data.each do |season, array|
      array.each do |i|
          i.each do |k, v|
              if v == occupation
                  contestant_name = i["name"]
              end
          end
      end
  end
  contestant_name
end

def count_contestants_by_hometown(data, hometown)
    counter = 0
    data.each do |season, array|
        array.each do |i|
            i.each do |k, v|
                if v == hometown
                    counter += 1
                end
            end
        end
    end
    counter
end

def get_occupation(data, hometown)
    occupation = []
    data.each do |season, array|
        array.each do |i|
            i.each do |k, v|
                if v == hometown
                    occupation << i["occupation"]
                end
            end
        end
    end
    occupation[0]
end

def get_average_age_for_season(data, season)
  age_array = []
  average_age = nil
  sum = 0
  data[season].each do |i|
      i.each do |k, v|
          if k == "age"
              age_array << v.to_f
          end
      end
  end
  age_array.each do |x|
      sum += x
  end
  average_age = sum / age_array.size
  average_age.round
end

