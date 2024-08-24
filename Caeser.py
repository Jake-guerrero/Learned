user_phrase = input("Please enter a sentence: ")
user_phrase = user_phrase.lower()
new_phrase = ''
alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
shifted_alphabet = ["f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "a", "b", "c", "d", "e"]
for letter in user_phrase:
    if letter in alphabet:
        new_phrase += shifted_alphabet[alphabet.index(letter)]
    else:
        new_phrase += letter
print("The encrypted sentence is: ", new_phrase)