# your code goes here
require "pry"

def begins_with_r(array)
  array.all?{|element| element[0] == "r"}
end

def contain_a(collection)
  collection.find_all{|element| element.include?("a")}
end

def first_wa(collection)
  collection.find{|element| element.to_s.include?("wa")}
end

def remove_non_strings(collection)
  collection.delete_if{|element| !element.is_a? String}
end

def count_elements(collection)
  collection.each do |original_hash|
   original_hash[:count] = 0
   name = original_hash[:name]
   collection.each do |hash|
     if hash[:name] == name
       original_hash[:count] += 1
     end
   end
 end.uniq
end

def merge_data(keys, data)
  keys.each_with_index.map{|key, i| key.merge(data.first.values[i])}
end

def find_cool(collection)
  collection.find_all{|hash| hash.has_value?("cool")}
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end
