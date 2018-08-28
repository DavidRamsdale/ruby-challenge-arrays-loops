# For questions 1 and 2 below use the following array:
shopping_list = ['cheese', 'toilet paper', 'taco shells', 'sushi rolls', '3 avocados', 'soap', 'sparkling mineral water', '2 pineapples', 'toothpaste']

# 1) Use .each to loop through each item in the shopping_list and capitalise
#    all words in each item. Hint: work smarter not harder - check Stack Overflow

# shopping_list.each do |item|
#     item.upcase!
# end
# puts shopping_list

# 2) Use while to loop through the shopping list and divide the shopping list
#    into multiple arrays according to item type. Print all of the arrays with a divider
#    between each and a total item count for each item.
# bathroom_items = []
# fruit = []
# dairy = []
# meals = []
# beverages = []

# i = 0
# while i < shopping_list.length do
#     if
#         shopping_list[i] == "cheese"
#         dairy << shopping_list[i]
#     elsif
#         shopping_list[i] == "toilet paper" || shopping_list[i] == "soap" || shopping_list[i] == "toothpaste"
#         bathroom_items << shopping_list[i]
#     elsif
#         shopping_list[i] == "taco shells" || shopping_list[i] == "sushi rolls"
#         meals << shopping_list[i]
#     elsif 
#         shopping_list[i] == "3 avocados" || shopping_list[i] == "2 pineapples"
#         fruit << shopping_list[i]
#     else
#         shopping_list[i] == "sparkling mineral water"
#         beverages << shopping_list[i]
#     end
#     i += 1
# end

# puts "#{bathroom_items} count: #{bathroom_items.length}"
# puts "#{fruit} count: #{fruit.length}"
# puts "#{dairy} count: #{dairy.length}"
# puts "#{meals} count: #{meals.length}"
# puts "#{beverages} count: #{beverages.length}"

# 3) Create an array of at least 20 integers.
#       Use a for loop to:
#         - find the average of all the integers
#         - find the sum of all the integers
#         - create an array of the same values as floats
#         - create an array of values that are multiplied by a randomly generated number

array = [23,2,4,5,6,1,6,7,3,2,4,6,7,22,24234,34,52,82,4123,42]
# num = 0
# for item in array do
#     num += item
# end
# puts "average is: #{num / array.length}"
# puts "sum is: #{num}"

# floatArray = []
# for item in array do
#     floatArray.push(item.to_f)
# end

# randomArray = []
# for item in array do
#     randomArray.push(item * rand(100))
# end

# EXTENSION TASK
# Use a for loop to go through each item in the shopping_list, remove any number in the
# string and replace it with its corresponding word. For example: '3 avocados' will
# become 'three avocados'.
# Consider using RegEx.

for item in shopping_list do 
    # if item[0] is int
    if /[0-9]/.match(item)
        # split item into seperate elements
        newArray = item.split
        # change int to word
        if newArray[0] == '1'
            # remove newArray[0]
            newArray.delete_at(0)
            # add new word to newArray[0]
            newArray.unshift("one")
            # connect to make new string
            newItem = newArray.join(" ")
            # remove old item from shopping list
            shopping_list.delete_at(shopping_list.index(item))
            # add back to shopping_list
            shopping_list.push(newItem)
        elsif newArray[0] == '2'
            newArray.delete_at(0)
            newArray.unshift("two")
            newItem = newArray.join(" ")
            index = shopping_list.index(item)
            shopping_list.delete_at(index)
            shopping_list.insert(index, newItem)
        elsif newArray[0] == '3'
            newArray.delete_at(0)
            newArray.unshift("three")
            newItem = newArray.join(" ")
            index = shopping_list.index(item)
            shopping_list.delete_at(index)
            shopping_list.insert(index, newItem)
        end
    end
end
puts shopping_list







