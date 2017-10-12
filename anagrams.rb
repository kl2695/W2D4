def first_anagram?(first, second)
  first_arr = first.split('')
  second_arr = second.split('')

  first_arr.permutation.include?(second_arr) ? true : false
end

def second_anagram?(first, second)
  first.chars.each do |ch|
    first.delete!(ch) if second.include?(ch)
    second.delete!(ch)
  end
  second.empty? && first.empty? ? true : false
end

def third_anagram?(first, second)
  first.split('').sort == second.split('').sort
end

def fourth_anagram?(first, second)
  hash = Hash.new(0)

  first.chars.each do |ch|
    hash[ch] += 1
  end

  second.chars.each do |ch|
    hash[ch] -= 1
    return false if hash[ch] < 0
  end

  true
end
