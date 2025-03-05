## Guess the number
# enimes = 1

# def increase_enemies():
#     enimes = 2
#     print(f"enemies inside function: {enimes}")

# increase_enemies()
# print(f"enemies outside function: {enimes}")

# def drink_potion():
#     potion_strength = 2
#     print(potion_strength)

# # drink_potion()
# # print(potion_strength)


# # Global scope

# player_health = 10

# def game():
#     def drink_potion():
#         potion_strength = 2
#         print(player_health)
    
#     drink_potion()


# print(player_health)

game_level = 3
enemies = ["skeleton", "zombie", "alien"]

def create_enemy():
    if game_level < 5:
        new_enemy = enimes[0]
    
    print(new_enemy)