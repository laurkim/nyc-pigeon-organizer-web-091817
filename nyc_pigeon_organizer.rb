def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |general_characteristic, hash|
    hash.each do |specifics, birds|
      birds.each do |bird|
        if pigeon_list[bird].nil?
          pigeon_list[bird] = {}
        end
        pigeon_list[bird][general_characteristic] ||= []
        pigeon_list[bird][general_characteristic] << specifics.to_s
      end
    end
  end
  pigeon_list
end
