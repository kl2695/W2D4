def bad_two_sum?(arr, target)
  i=0
  while i < arr.length
    first = arr[i]
    j=i+1
    while j < arr.length
      second = arr[j]
      if first+second == target
        return true
      end
      j+=1
    end
    i+=1
  end

  return false

end

def ok_two_sum?(arr, target)
  arr.sort!

  arr.each do |el|
    temp = arr
    temp.delete(el)

    return true if binary_search(temp,target - el)
  end

  return false
end

def binary_search(an_array, item)
    first = 0
    last = an_array.length - 1

    while first <= last
        i = (first + last) / 2

        if an_array[i] == item
            return "#{item} found at position #{i}"
        elsif an_array[i] > item
            last = i - 1
        elsif an_array[i] < item
            first = i + 1
        else
            return "#{item} not found in this array"
        end
    end
end

def two_sum?(arr, target)

  hash = Hash.new(0)


  arr.each do |el|
    temp = hash
    temp.delete(el)
    return true if temp[target-el]
  end

  false
end
