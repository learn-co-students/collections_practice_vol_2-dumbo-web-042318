require "pry"

def begins_with_r(arr)
  arr.all?{ |x| x[0] == "r" }
end

def contain_a(arr)
  arr.select{ |x| x.chars.include?("a") }
end

def first_wa(arr)
  arr.find{ |x| x[0..1] == "wa" }
end

def remove_non_strings(arr)
  arr.reject{ |x| x.class != String }
end

# def count_elements(arr)
#   counter = Hash.new(0)
#   arr.each do |hash|
#     hash.each do |k,v|
#        counter[hash[k]] += 1
#       end
#       hash[:count] = counter
#       # hash[:count] = counter.values.join.to_i
#     end
# end

def count_elements(arr)
  names = arr.uniq

  names.collect do |x|
    x.merge({:count=> arr.count { |item| item[:name]== x[:name] }}) #merge with count of other array
  end

end

def merge_data(v1, v2)
  new_arr = []

    v2.each_with_index do |hash_2|
       hash_2.each do |k, v|
         new_arr << v
       end
    end

  v1.collect.with_index {|hash_1, i| hash_1.merge(new_arr[i])}
end

def find_cool(arr)
  new_arr = []
  arr.each do |item|
    item.each do |k,v|
      if v == "cool"
        new_arr << item
      end
    end
  end
  new_arr
end

def organize_schools(arr)
  location_hash = arr.values.uniq
  cities_hash = Hash.new{|hsh,key| hsh[key] = [] }

    location_hash.each do |hash|
      hash.each do |k,v|
        cities_hash[v]
      end
    end

    arr.each do |name, location|
      location.each do |k,v|
        if cities_hash.include?(v)
          cities_hash[v] << name
        end
      end
    end
    cities_hash
end
