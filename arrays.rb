# Part I - Print a single item from the following arrays:

# Use the following array of Kardashians for exercises 1 - 5
kardashians = ['Kim', 'Robert', 'Khloé', 'Rob', 'Kourtney']

# 1) Find two ways to access and print the 'Kim' value.
puts kardashians[0]
puts kardashians[kardashians.index("Kim")]
# 2) Find two ways to remove the male names from the Kardashians.
### first
kardashians.delete_at(1)
kardashians.delete_at(2)
puts kardashians

# second
kardashians.each do |name|
    if name == ("Rob") || name == ("Robert")
        kardashians.delete_at(kardashians.index(name))
    end
end

# 3) Remove one Kardashian, print the names and then add them back to the Array:
name = kardashians[0]
kardashians.delete_at(0)
puts kardashians 
kardashians.push(name)


# 4) Take the last Kardashian and make them the first, print the result.
name = kardashians.pop
kardashians.unshift(name) 


# 5) Find a way to count the number of items in the array that begin with the letter 'K'
i = 0
kardashians.each do |name|
    if name[0] == 'K'
        i += 1
    end
end
