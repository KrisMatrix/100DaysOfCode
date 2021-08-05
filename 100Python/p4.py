#!/usr/bin/python3
import random

def show_choice(choice):
  if choice == 0:
    print(rock)
  elif choice == 1:
    print(paper)
  else:
    print(scissors)

rock = """
    _______
---'   ____)
      (_____)
      (_____)
      (____)
---.__(___)
"""

paper ="""
     _______
---'    ____)____
           ______)
          _______)
         _______)
---.__________)
"""

scissors = """
    _______
---'   ____)____
          ______)
       __________)
      (____)
---.__(___)
""" 

user_choice = input("What do you choose? Type 0 for Rock, 1 for Paper, or 2 for Scissors.")
user_choice = int(user_choice)

if (user_choice > 2 or user_choice < 0):
  print("Invalid User Choice!")
  exit()

show_choice(user_choice)
computer_choice = random.randint(0,2)
print("Computer chose:")
show_choice(computer_choice)

if user_choice == computer_choice:
  print("Draw")
elif user_choice == 0 and computer_choice == 2:
  print ("You win!")
elif user_choice == 0 and computer_choice == 1:
  print ("You Lose!")
elif user_choice == 1 and computer_choice == 2:
  print ("You Lose!")
elif user_choice == 1 and computer_choice == 0:
  print ("You win!")
elif user_choice == 2 and computer_choice == 0:
  print ("You Lose!")
elif user_choice == 2 and computer_choice == 1:
  print ("You win!")
