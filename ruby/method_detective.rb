# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase

# => “InVeStIgAtIoN”
# Correct!
# 
"mARTIan".swapcase
# => "MartiAN"

"zom".gsub(/o/, "oo")
# => “zoom”
"men".gsub(/e/, "ea")
=> "mean"
# 
"zom".insert(2, "o")
# => “zoom”
# 
"Yeh".insert(2,"a")
=> "Yeah"

# "enhance".insert(0, "     ", -1, "    ")
# => "    enhance    "
# that was not working and needs some research on how to do two arguments in here
#
 "enhance".center(15)
# => "    enhance    "
# First I guesed to get the centering right.  Then I did it again below. 
# This time, I took this sample and checked the length to find it was 15 characters.
"marvelous".center(100)
# "                                             marvelous                                              "

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
"the usual".concat(" suspects")
# => "the usual suspects"
#

"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".slice!(1..39)

# => "he mystery of the missing first letter"
# 
 "The mystery of the missing first letter".delete("T")
# => "he mystery of the missing first letter"
# 

"Elementary,    my   dear        Watson!".gsub("    my   dear        Watson!", " my dear Watson!") 

# => "Elementary, my dear Watson!"

 "z".ord
# => 122 
# What is the significance of the number 122 in relation to the character z?)
# 122 is the decimal output in ascii for "z"   but byte strategies were not working, 
# so I googled a bit and learned 122 is also the ordinal for "z" 
# https://cs.nyu.edu/courses/spring99/A22.0002.002/lecture_notes/lecture5/node16.html
# 
"How many times does the letter 'a' appear in this string?".count "a"
# => 4