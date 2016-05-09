# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase

# => “InVeStIgAtIoN”
# Correct!
# 

"zom".gsub(/o/, "oo")
# => “zoom”
# 
"zom".insert(2, "o")
# => “zoom”

# "enhance".insert(0, "     ", -1, "    ")
# => "    enhance    "
# that was not working and needs some research on how to do two arguments in here
#
 "enhance".center(15)
# => "    enhance    "
# First I guesed to get the centering right.  Then 
# I took this sample and checked the lenght to find it was 15 characters.

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"
# 
"Stop! You’re under arrest!".upcase!
# => "STOP! YOU’RE UNDER ARREST!"
# will return nil if no changes are made.

"the usual".insert(-1, " suspects")

#=> "the usual suspects"
"suspects".prepend("the usual ")

" the usual".replace("the usual suspects")
# => "the usual suspects"
#

# 

# "The case of the disappearing last letter".<???>
# => "The case of the disappearing last lette"

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"

# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"

# "z".<???>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

# "How many times does the letter 'a' appear in this string?".<???>
# => 4