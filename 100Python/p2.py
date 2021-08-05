print("Welcome to the tip calculator.")
bill = float(input("What is your total bill?"))
no_of_people = float(input("How many people to split the bill?"))
tip_choice = float(input("What percentage tip would you like to give?10, 12 or 15?"))
pay = bill*(1 + tip_choice/100) / no_of_people
print("Each person shoulld pay: "+ str(pay))
