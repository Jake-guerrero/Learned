## Blackjack.py

import random

def deal_card():
    """"Returns a random card from the deck"""
    cards = [11, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10]
    card = random.choice(cards)
    return card


def calculate_score(cards):
    if sum(cards) == 21 and len(cards) == 2:
        return 0

    if 11 in cards and sum(cards) > 21:
        cards.remove(11)
        cards.append(1)

    return sum(cards)

def compare(my_score, computer_score):
    if my_score == computer_score:
        return "Draw"
    elif computer_score == 0:
        return "Lose, opponnet has Blackjack"
    elif my_score == 0:
        return "Win with a Blackjack"
    elif my_score > 21:
        return "You went over. You lose"
    elif computer_score > 21:
        return "Opponnent went over. You win"
    elif my_score > computer_score:
        return "You win"
    else:
        return "You lose"




def play_game():
    my_cards = []
    computer_cards = []
    is_game_over = False


    for _ in range(2):
        my_cards.append(deal_card())
        computer_cards.append(deal_card())



    while not is_game_over:
        my_score = calculate_score(my_cards)
        computer_score = calculate_score(computer_cards)
        print(f"Your cards: {my_cards}, current score: {my_score}")
        print(f"Computer's first card: {computer_cards[0]}")


        if my_score == 0 or computer_cards == 0 or my_score > 21:
            is_game_over = True
        else:
            user_should_deal = input("Type 'y' to get another card, type 'n' to pass: ")
            if user_should_deal == 'y':
                my_cards.append(deal_card())
            else:
                is_game_over = True


    while computer_score != 0 and computer_score < 17:
        computer_cards.append(deal_card())
        computer_score = calculate_score(computer_cards)

    print(f"The final hand  for the player: {my_cards}, final score: {my_score}")
    print(f"Computer's final hand: {computer_cards}, final score: {computer_score}")
    print(compare(my_score, computer_score))


while input("Do you want to play a game of Blackjack? Type 'y' or 'n': ") == "y":
    print("\n" * 20)
    play_game()