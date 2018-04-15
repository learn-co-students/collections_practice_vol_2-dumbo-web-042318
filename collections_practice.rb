require "pry"

def begins_with_r(array)
  begins_with_r = []
  
  array.each do |x|
    if x[0] == "r" 
      begins_with_r << true
    else
      begins_with_r << false
    end
  end
  
  if begins_with_r.include?(false)
    return false
  else
    return true
  end
  
end

def contain_a(array)
  i = 0 
  contains_a = []

  while i < array.length 
    if array[i].include?("a")
      contains_a << array[i]
      #binding.pry
    end
    i += 1
  end
  contains_a
end

def first_wa(array)
  array.find do |x|
    if x[0, 2] == "wa"
      return x
    end
  end
  #binding.pry
end

def remove_non_strings(array)
  array.delete_if do |x|
    x.class != String
    #binding.pry
  end
end

def count_elements(array)
  i = 0
  names = array.uniq
  
  
  names.map do |x|
    x.merge({:count => array.count { |item| item[:name] == x[:name] }})
    #binding.pry
  end
  
  
end

def merge_data(hash, data)
  i = 0 
  merge_data = []
  
  while i < hash.length
    merge_data << hash[i].merge(data[0].values[i])
    i += 1 
    #binding.pry
  end
  merge_data
  #binding.pry
end

def find_cool(array)
  cool = []
  array.each do |x|
    if x[:temperature] == "cool"
      cool << x
      #binding.pry
    end
  end
  
  cool
end

def organize_schools(schools)
  locations = {}
  
  schools.each do |k,v| 
    locations[v[:location]] = []
  end
  
  locations.each do |key, value| 
    schools.each do |k, v| 
      if key == v[:location] 
        value << k 
      end
    end
  end
end
