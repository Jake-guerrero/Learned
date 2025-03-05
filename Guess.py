# from random import randint


# easy_turns = 14
# hard_turns = 7


# def see_answer(user_guess, actual_answer):
#     if user_guess > actual_answer:
#         print("Too high.")
#     elif user_guess < actual_answer:
#         print("Too low.")
#     else:
#         print(f"You got the right number. The answer was {actual_answer}")

# def difficulty():
#     input("Choose a difficulty: type 'easy' or 'hard': ")
#     if level == "easy":
#         turns = easy_turns
#     else:
#         turns = hard_turns

# print("Welcome to the Number Guessing")
# print("I am thinking of a number between 1 and 100.")
# answer = randint(a = 1, b = 100)
# print(f"Psst, the correct answer is {answer}")

# guess = int(input("Make a guess: "))
# turns = difficulty()
# print(f"You have { } attempts remaining to guess the number.")

from random import randint

easy_turns = 14
hard_turns = 7

def check_guess(my_guess, real_answer, turns):
    """Checks the answer against your guess, returns the number of turns you have left."""
    if my_guess > real_answer:
        print("Too high.")
        return turns - 1
    elif my_guess < real_answer:
        print("Too low.")
        return turns - 1
    else:
        print(f"You found it! The real answer was {real_answer}.")
        return turns

def choose_difficulty():
    level = input("Choose your difficulty: type 'easy' or 'hard': ")
    if level == "easy":
        return easy_turns
    else:
        return hard_turns

print("Welcome to the number guessing game!")
print("I am thinking of a number from 1 to 100.")
answer = randint(1, 100)

turns = choose_difficulty()
print(f"You have {turns} attempts remaining to guess the number.")

guess = None

while guess != answer and turns > 0:
    print(f"You have {turns} attempts remaining.")
    guess = int(input("Make a guess: "))
    turns = check_guess(guess, answer, turns)
    if turns == 0:
        print("You've run out of guesses. You've lost the game.")