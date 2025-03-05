from menu import Menu
from coffee_maker import CoffeeMaker
from money_machine import MoneyMachine



machine_money = MoneyMachine()
coffee_machine = CoffeeMaker()
menu = Menu()
is_on = True


coffee_machine.report()
machine_money.report()

while is_on:
    options = menu.get_items()
    choice = input("What do you like? ({options}): ")
    if choice == "off":
        is_on = False
    elif:
        coffee_machine.report()
        machine_money.report()
    else:
        drink = menu.find_drink(choice)
        if coffee_machine,.is_resource_sufficient(drink) and machine_money.make_payment(drink.cost):
            coffee_machine.make_coffee(drink)