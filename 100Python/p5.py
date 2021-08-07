import random

letters = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 
'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C',
'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S',
'T', 'U', 'V', 'W', 'X', 'Y', 'Z']

numbers = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

symbols = ['!', '#', '$', '%', '&', '(', ')', '*', '+']

print("Welcome to the PyPassword Generator!")
no_of_letters = int(input("How many letters would you like in your password?"))
no_of_symbols = int(input("How many symbols would you like?"))
no_of_numbers = int(input("How many numbers would you like?"))

password = []

for i in range(0,no_of_letters):
  index = random.randint(0,len(letters)-1)
  password.append(letters[index])

for i in range(0,no_of_symbols):
  index = random.randint(0,len(symbols)-1)
  password.append(symbols[index])

for i in range(0,no_of_numbers):
  index = random.randint(0,len(numbers)-1)
  password.append(numbers[index])

password_str = ""
password_str = password_str.join(password)
print(f"Here is your password (Easy): {password_str}")

random.shuffle(password)
password_str = ""
password_str = password_str.join(password)
print(f"Here is your password (Hard): {password_str}")

#EOF
