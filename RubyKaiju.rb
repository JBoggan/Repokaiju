codeArray  = [] 
@prng = Random.new(1234)

def permuteLines(array)
	length = array.length
	index = @prng.rand(1..length)
	temp = array[index]
	array[index] = array[index-1]
	array[index-1] = temp
	return array
end

STDIN.each do |line|
	codeArray << line.chomp
end
puts permuteLines(codeArray)