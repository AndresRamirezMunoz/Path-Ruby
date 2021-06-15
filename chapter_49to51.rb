#Extract singles characters
story = "Once upon a time in land a far, far away"
p story.length
p story[5]
p story[-2]
p story.slice(5)
puts

#Extract mutiples characters
p story[5, 4]
p story[-4, 4]
p story[-4, 4]
p story[5, 4]
puts

#Extract mutiples characters with range object
p story[27..39]
p story.slice(27..39)

p story[27...39]
p story.slice(27...39)

p story[20...-1]
