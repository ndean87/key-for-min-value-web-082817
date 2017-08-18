# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  lowest_value = 0
  lowest_key = ""
  if name_hash.empty? == true
    nil
  else
    name_hash.each_with_index do |(key, value), i|
      if i == 0
        lowest_value = value
        lowest_key = key
      elsif value < lowest_value
        lowest_value = value
        lowest_key = key
      end
    end
    lowest_key
  end
end
