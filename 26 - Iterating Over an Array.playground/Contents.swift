

var shoppingList: [String] = ["Eggs", "Milk"]

shoppingList += ["Baking Powder"]
// shoppingList now contains 4 items
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
// shoppingList now contains 7 items

for item in shoppingList {
    print(item)
}

for (idx, item) in shoppingList.enumerated() {
    print(idx, item)
}
