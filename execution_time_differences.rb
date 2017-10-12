def my_min(list)
  min = list[0]
  i=0
  while i < list.length
    j=i+1
    while j < list.length
      if list[i]< list[j]
        min = list[i] if list[i] < min
      else
        min = list[j] if list[j] < min
      end
      j+=1
    end
    i+=1
  end
    return min
end

def my_min2(list)
  min = list[0]
  i=0
  while i < list.length
    min = list[i] if list[i] < min
    i+=1
  end
  min
end


def largest_contiguous_subsum(list)
  sum = 0
  list.each_index do |i|
    j = i
    sub_arr = []
    while j < list.length
      sub_arr = list[i..j]
      j += 1
    end
    sum = sub_arr.reduce(:+) if sub_arr.reduce(:+) > sum
  end
  sum
end

def better_subsum(list)
  i = 0
  r_pos = 0
  max_sum = list.first
  while i < list.length
    r_pos += list[i]
    r_pos = 0 if r_pos < 0
    max_sum = r_pos if r_pos > max_sum
    i += 1
  end
  max_sum
end
