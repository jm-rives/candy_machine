### candy_machine_v0.py 
#
# This python program produces a virtual candy machine game that elicits the amount of virtual money the user 
# has and deducts their purchases from given amount. 
#
# inspired by Ada Developers Academy JumpStart program 
# that can be accessed at https://github.com/Ada-Developers-Academy/jump-start/blob/master/lessons/09-programming-expressions/assignments/candy-machine.md
#
##

print "Welcome to the Crow's Nest Virtual Candy Machine. All the virtual goodness, none of the calories."


# this snippet is to accept user input in dollars, convert it to cents to be called by another code snippet

cash = raw_input("Please enter the amount of money you'd like to spend on virtual candy $ ")
if "." in cash: 
	cash = float(cash) # handles decimal notation nicely but what if no deicmal
	cash = cash * 100
else:
	# ~ pretty_cash = float(cash) * 0.01 # to return it formatter in decimal in later refactor
#print cash

# normalizes data to accept cents/ avoid float impreccision
cash = int(cash)

#print cash # print debuggin'

# ~ big_money will go here

menu = """
===============================\n
* Menu *\n
A = $0.65 Twix\n
B = $0.50 Chips\n
C = $0.75 Nutter Butter\n
D = $0.65 Peanut Butter Cup\n
E = $0.55 Juicy Fruit Gum\n 
===============================\n"""

print menu

#try using hash when translating into Ruby

# this block accepts the user menu choice 
# tests to see if the amount of cash given is adequate to cover item costs  #
# if so - debits the price of candy and returns change 
# if not - prompts 

# variables initialized and assigned item price
A = 65
B = 50
C = 75
D = 65
E = 55

item = raw_input("Please enter the letter of the item you would like to purchase: ")
item = item.capitalize()

if item == "A" or item == "B" or item == "C" or item == "D" or item == "E":
	#print "Challenge passed"
	# calculates change and pretties it up with a decimal 
	# ~ try dictionaries when refactoring
	if item == "A":

		if cash >= A :
			change = (cash - A) * 0.010
			print "Please take your item & %r change" % change
		else:
			print "So sorry, your funds are insufficient for the item chosen."

	elif item == "B":

		if cash >= B:
			change = (cash - B) * 0.010
			print "Please take your item & %r change" % change
		else:
			print "So sorry, your funds are insufficient for the item chosen."

	elif item == "C":

		if cash >= C:
			change = (cash - C) * 0.010
			print "Please take your item & %r change" % change
		else:
			print "So sorry, your funds are insufficient for the item chosen."

	elif item == "D":

		if cash >= D:
			change = (cash - D) * 0.010
			print "Please take your item & %r change" % change
		else:
			print "So sorry, your funds are insufficient for the item chosen."

	elif item == "E":

		if cash >= E:
			change = (cash - E) * 0.010
			print "Please take your item & %r change" % change
		else:
			print "So sorry, your funds are insufficient for the item chosen."
	#print item # print debuggin'
	else:
		""" LOOOOOOOOL <3 <3 <3"""
		print "This should never, ever run."
else:
	print "I'm sorry. You're entry was invaild. Please try again!"

