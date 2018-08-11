
var groceryBag3: Set = ["Lighter", "Grapes", "Avocados"]

for stuff in groceryBag3 {
    print(stuff)
}

let hasBananas = groceryBag3.contains("Bananas") // false because Grocery Bag #3 doesnt have Bananas in it

/*
 --------------------
 Combinding Sets
 --------------------
 */
let friendGroceryBag = Set(["Bananas", "Cereal", "Milk", "Oranges"])
let commonGroceryBag = groceryBag3.union(friendGroceryBag)
print("-----------Break-----")
let roomatesGroceryBag = Set(["Apples", "Bananas", "Cereal", "Toothpaste"])
let itemsToReturn = commonGroceryBag.intersection(roomatesGroceryBag)
print(itemsToReturn)
