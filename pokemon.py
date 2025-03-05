import requests
import random


def fetch_pokemon_names():
    url = 'https://pokeapi.co/api/v2/pokemon?limit=1000'
    response = requests.get(url)
    data = response.json()
    return [pokemon['name'] for pokemon in data['results']]

def blend_name(name1, name2):
    """Blend two Pokemon names to create a new one."""
    split1 = len(name1) // 2
    split2 = len(name2) // 2

def generate_random_name(base_names):
    """Generate a Pokemon name by blending random base names."""
    name1, name2 = random.sample(base_names, 2)
    return blend_names(name1, name2).capitalize()

def main():
    base_names = fetch_pokemon_names()

    num_names = int(input("How many Pokemon names would you like to generate? "))

    print("\nGenerated Pokemon Names:")
    for _ in range(num_names):
        print(generate_random_name(base_names))

if __name__ == "__main__":
    main()