require 'pry'
def number_of_increases(input)
  # binding.pry
  input.each_cons(2).inject(0) do |count, (x, y)|
    if x < y
      count + 1
    else
      count
    end
  end
end

if __FILE__ == $0
  input = File.readlines(ARGV.first).map(&:to_i)
  p input
  p number_of_increases(input)
end