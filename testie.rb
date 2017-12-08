### https://github.com/watir/watir_meta/wiki/Cheat-Sheet-for-Ruby

# Conditionals (if)
if number == 5
    puts "Success"
elsif number == 6
    puts "Acceptable"
else
    puts "FAILURE"
end

# Function definitions
def assert_equal(expected, actual)
    if expected != actual
        puts "FAILURE"
    end
end

def five # No parenthesis are required
    5
end
box = five  # box's value is 5. We do not need to say 'five()' as in some languages, 
            # but you can put the parenthesis if you prefer

# The above function is the same as:
 def five
    return 5 # Some people choose to use the return statement just to be clear, 
 end    # but it does not change how the function works


 def make_positive(number)
    if number < 0
        -number
    else
        number
    end
end
variable = make_positive(-5)
# puts variable.to_s + " => first result"
variable = make_positive(five)
# puts variable.to_s + " => second result"

# Iteration
# Prints 'hello' five times
5.times do
    puts 'hello'
end

# Print numbers from one to ten
for x in 1..10 do
    puts x
end

# Here's another
(1..10).each do |x|
    puts x
end

# The part between the do and the the end is called a block. 
# You can replace do and end with braces

(1..10).each {|x| puts x}

# The '1..10' is a range, which works like an array of numbers from 1 to 10
# The each is a method that iterates through each elementof the range.
# It is called an iterator

["a", "b", "c"].each { |x| puts x }

# What if you want to transform each element of an array?
# The following capitalizes each element of an array

["hi", "there"].collect { |word| word.capitalize } # The result is ["Hi", "There"]

## REGULAR EXPRESSIONS

# RegEx are characters sorrounded by '//' or '%r{}'
# A RegEx is compared to a string like this:

regexp =~ string

# Most xters in a RegEx match the same xter in a string.
# So, these all match

/a/ =~ 'a string'
/a/ =~ 'string me along'

# This also matches:

/as/ =~ 'a string with astounding length'

# RegEx can match anywhere in the string. 
# If you want it to match only the beginning, start with a caret:

/^as/ =~ 'alas, no match'

# If you want it to match at the end, end with a dollar sign:

/no$/ =~ 'no match, alas'

# If you want the RegEx to match any character in a string, use a period:

/^.s/ =~ "As if I did't know better!"