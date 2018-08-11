/*
 --------------------
 Set
 --------------------
 */


var groceryBag = Set<String>()
groceryBag.insert("Coke")
groceryBag.insert("Sprite")
groceryBag.insert("Root Bear")

for sugarWater in groceryBag {
    print(sugarWater)
}

/*
 --------------------
 Set better way
 --------------------
 */
print("-------Break---------")
var groceryBag2 = Set (["Apples", "Oranges", "Pineapple"])
groceryBag2.insert("Beer")
for food in groceryBag2 {
print(food)
}
    print("-------Break---------")

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
/*
 --------------------
 Dectinging intersections
 --------------------
 */

let yourSecondBag = Set(["Barries", "Honey", "Yogurt"])
let roommateSecondBag = Set(["Grapes", "Honey"])
let disjoint = yourSecondBag.isDisjoint(with: roommateSecondBag)

/*
 --------------------
Brone Challenge
 --------------------
 */
let myCities = Set(["Atlanta", "Chicago", "Jacksonville", "New York", "San Francisco"])
//
let yourCities = Set (["Chicago", "San Francisco", "Jacksonville"])

myCities == yourCities

var myGrocery: Set = ["Pizza", "Oranges", "pickles"]
let friendGro: Set = ["Pizza", "Water Melon", "soap"]
myGrocery.formUnion(friendGro)
print(myGrocery)


var myGro2: Set = ["Yougrt", "Syrup", "Choke", "Pizza" ]
print("Break---------")
let friGro: Set = ["Syrup Lite", "Choke", "Pizza", "Grapes"]
myGro2.formIntersection(friGro)
print(myGro2)



