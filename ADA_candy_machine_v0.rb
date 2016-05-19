### ADA_candy_machine_v0.rb
#
# This ruby program produces a virtual candy machine game that elicits the amount of virtual money the user
# has and deducts their purchases from given amount.
#
# inspired by Ada Developers Academy JumpStart program
# that can be accessed at https://github.com/Ada-Developers-Academy/jump-start/blob/master/lessons/09-programming-expressions/assignments/candy-machine.md
#
##

puts "Welcome to the Crow's Nest Virtual Candy Machine. All the virtual goodness, none of the calories."

menu = """
===============================\n
* Menu *\n
A = $0.65 Twix\n
B = $0.50 Chips\n
C = $0.75 Nutter Butter\n
D = $0.65 Peanut Butter Cup\n
E = $0.55 Juicy Fruit Gum\n
===============================\n"""



print "Please enter the amount of money you'd like to spend on virtual candy $ "
cash = gets.chomp

puts menu

if cash.count(".") > 0
	cash = cash.to_f
	cash = cash * 100
else
	# ~ pretty_cash = float(cash) * 0.01 # to return it formatter in decimal in later re-factor
#print cash
end


# normalizes data to accept cents/ avoid float imprecision
cash = cash.to_i
# puts cash # print debuggin
# ADA_candy_machine_change.rb

# CA_candy_machine_change.py
#cash = 40 # hard coding value of cash for testing

# this block accepts the user menu choice
# tests to see if the amount of cash given is adequate to cover item costs  #
# if so - debits the price of candy and returns change
# if not - prompts

# item prices
twix_price = 65
chips_price = 50
nutter_butter_price = 75
peanut_butter_cup_price = 65
juicy_fruit_gum_price = 55

print  "Please enter the letter of the item you would like to purchase  -> "
item = gets.chomp
item = item.capitalize
puts item

if item == "A" or item == "B" or item == "C" or item == "D" or item == "E"
	#puts "Challenge passed"
	# calculates change and pretties it up with a decimal
	# ~ try hashes when refactoring to v1

	if item == "A"
		# handles float imprecision poorly
		if cash >= twix_price
			change = (cash - twix_price) * 0.010
			puts "Have a good day! Please take your item & #{change}"
		else
			puts "So sorry, your funds are insufficient for the item chosen."
		end

	elsif item == "B"

		if cash >= chips_price
			change = (cash - chips_price) * 0.010
			puts "Have a good day! Please take your item & #{change}"
		else
			puts "So sorry, your funds are insufficient for the item chosen."
		end

	elsif item == "C"

		if cash >= nutter_butter_price
			change = (cash - nutter_butter_price) * 0.010
			puts "Have a good day! Please take your item & #{change}"
		else
			puts "So sorry, your funds are insufficient for the item chosen."
		end

	elsif item == "D"

		if cash >= peanut_butter_cup_price
			change = (cash - peanut_butter_cup_price) * 0.010
			puts "Have a good day! Please take your item & #{change}"
		else
			puts "So sorry, your funds are insufficient for the item chosen."
		end

	elsif item == "E"

		if cash >= juicy_fruit_gum_price
			change = (cash - juicy_fruit_gum_price) * 0.010
			puts "Have a good day! Please take your item & #{change}"
		else
			puts "So sorry, your funds are insufficient for the item chosen."
		end
	#puts item # puts debuggin'
	end
else
	puts "I'm sorry. You're entry was invalid. Please try again!"
end
