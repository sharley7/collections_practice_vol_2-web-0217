# your code goes here
def begins_with_r (array)
  result = nil
  array.each do |item|
  if item[0].downcase != "r"
    result = false
    break
  else
    result = true
  end
end
return result
end

def contain_a (array)
  a_array = []
  array.each do |item|
    if item.include?("a" || "A")
      a_array << item
    end
  end
  return a_array
end

def first_wa (array)
  array.find do |item|
    if item.slice(0,2).downcase == "wa"
      return item
    end
  end
end

def remove_non_strings (array)
string_arr = []
  array.each do |item|
    if item.class == String
    string_arr << item
  end
end
string_arr
end

def count_elements (array)
  array.each do |the_hash|
    name = the_hash[:name]
    the_hash[:count] = 0
    array.each do |new_hash|
    if new_hash[:name] == name
      the_hash[:count] += 1
    end
  end
end
return array.uniq
end

def merge_data(keys, values)
  merged_data = []
  keys.each do |item|
    name = item[:first_name]
    values.each do |data|
      if data[name]
        merged_person = data[name]
        merged_person[:first_name] = name
        merged_data << merged_person
      end
    end
  end
  merged_data
end

def find_cool (array)
new_arr = []
array.collect do |hash|
  hash.collect do |key, value|
  if value == "cool"
  new_arr << hash
end
end
end
return new_arr
end

def organize_schools (schools)
sorted_schools = {}
schools.each do |name, loc|
  location = loc[:location]
  if sorted_schools[location]
    sorted_schools[location] << name
  else
    sorted_schools[location] = []
    sorted_schools[location] << name
  end
end
sorted_schools
end
