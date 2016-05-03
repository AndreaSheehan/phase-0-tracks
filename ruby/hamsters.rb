#Collect data about hamsters including:
#Hamster name
#IF no name, Assign name
#How noisy is it? Volume 1-10 quiet to loud
#Fur color
#Good candidate for adoption
#Estimated age
#If Estimated age blank set to nil

puts "Input name from hamster nametag, if no name, create one."
name = gets.chomp
puts "hello #{name}, you are so cute!"

puts "On a scale of 1 (quiet) to 10(loud) how noisy is #{name}?"
volume_level = gets.chomp.to_i
puts "You reported your hamsters volume at level: #{volume_level}"

puts "What is #{name}'s fur color?"
color = gets.chomp
puts "#{color} is a nice color!"

puts "Is your hamster ready for adopton right away? (y/n)"
good_candidate = gets.chomp

puts "How old is #{name}? If you do not know, leave blank. Don't guess!"
age = gets.chomp.to_i

if age == 0
	age = nil
	puts "We will schedule an age evaluation...."
else
	puts "Thank you for that information!"
end

#puts "Welcome to the hamster hotel #{name}!"
#puts "Volume level: #{volume_level}"
#puts "Age: #{age}"
#puts "Fur color: #{color}"
#puts "Ready for adoption?: #{good_candidate}"
