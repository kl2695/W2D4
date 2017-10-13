def windowed_max_range(arr, w)
  current = 0
  arr.each_index do |i|
    j = i + 1

    until j - i == w
      j += 1
    end

    window = arr[i...j]
    if window.length == w
      p window
      max = window.max
      min = window.min
      current = max - min if max - min > current
    end
  end

  current
end
