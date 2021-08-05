print('''
*******************************************************************************
          |                   |                  |                     |
 _________|________________.=""_;=.______________|_____________________|_______
|                   |  ,-"_,=""     `"=.|                  |
|___________________|__"=._o`"-._        `"=.______________|___________________
          |                `"=._o`"=._      _`"=._                     |
 _________|_____________________:=._o "=._."_.-="'"=.__________________|_______
|                   |    __.--" , ; `"=._o." ,-"""-._ ".   |
|___________________|_._"  ,. .` ` `` ,  `"-._"-._   ". '__|___________________
          |           |o`"=._` , "` `; .". ,  "-._"-._; ;              |
 _________|___________| ;`-.o`"=._; ." ` '`."\` . "-._ /_______________|_______
|                   | |o;    `"-.o`"=._``  '` " ,__.--o;   |
|___________________|_| ;     (#) `-.o `"=.`_.--"_o.-; ;___|___________________
____/______/______/___|o;._    "      `".o|o_.--"    ;o;____/______/______/____
/______/______/______/_"=._o--._        ; | ;        ; ;/______/______/______/_
____/______/______/______/__"=._o--._   ;o|o;     _._;o;____/______/______/____
/______/______/______/______/____"=._o._; | ;_.--"o.--"_/______/______/______/_
____/______/______/______/______/_____"=.o|o_.--""___/______/______/______/____
/______/______/______/______/______/______/______/______/______/______/_____ /
*******************************************************************************
''')
print("Welcome to Treasure Island.")
print("Your mission is to find the treasure.")

left_or_right = input("You're at a cross road, where do you want to go? Type 'left' or 'right'?").lower()
if (left_or_right == "left"):
  swim_wait = input("You arrived at a lake. There is an island in the middle of the lake. Type 'swim' to swim across. Or you can 'wait'?").lower()
  if swim_wait == "wait":
    door_color = input("You arrived at three doors. Blue, Yellow and Red. Which one Do you want to choose?").lower()
    if door_color == "Red":
      print("Burned by fire! Game Over!")
      exit()
    elif door_color == "blue":
      print("Eaten by beasts! Game Over!")
      exit()
    elif door_color == "yellow":
      print("You Win!")
    else:
      print("Game Over!")
  else:
    print("A trout attacked you and dragged you into the depths! Game Over")
    exit()
else:
  print("You fell into a hole! Game Over!")
  exit()


