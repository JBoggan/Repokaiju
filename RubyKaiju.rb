codeArray  = [] 
@prng = Random.new(1234)

def permuteLines(array)
	length = array.length
	index = @prng.rand(1..length-1)
	temp = array[index]
	array[index] = array[index-1]
	array[index-1] = temp
	return array
end

def dropRandom(array)
	length = array.length
	index = @prng.rand(1..length-1)
	array.delete_at(index)
	return array
end

def cloneRandom(array)
	length = array.length
	index = @prng.rand(1..length-1)
	insertIndex = @prng.rand(1..length-1)
	extra = array[index]
	array.insert(insertIndex, extra)
	return array
end


STDIN.each do |line|
	codeArray << line.chomp
end

codeArray = permuteLines(codeArray)
codeArray = dropRandom(codeArray)
codeArray = cloneRandom(codeArray)
puts codeArray

