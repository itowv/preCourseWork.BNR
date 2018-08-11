//var bucketList: Array<String>
//var bucketList: [String] = ["Get iOS dev job"] // <- infrence feature
var bucketList = ["Get iOS dev job"]
bucketList.append("Own a 4 rental properites")
bucketList.append("Do a 360 ollie")
bucketList.append("Have kids")
bucketList.append("Own my own buisness")
bucketList.append("Own a boat with jet skies")
bucketList.remove(at: 2)
bucketList
print(bucketList.count)
print(bucketList[0...3]) // Subscripting
print(bucketList[2])
bucketList[2] += ", Pos 3 or 5" // add info to an existing string
bucketList
bucketList[0] = "Get a 300k a year, personal iOS buisness"
bucketList

print("---------NeXT EXAMPLE 2----------")
/*
 ------------------------------------
Uisng a Loop to apppend items from one array to another
----------------------------------
 */

var bucketList2 = ["Climb Mt. Everest"]
var newItems = ["Fly hot air ballon to Fiji", "Watch the Lord of the Rings triliogy in one day", "Go on a walkabout", "Scuba dive in the Great Blue Hole", "Find a triple rainbow"]
for items in newItems {
    bucketList2.append(items)
}
bucketList2.remove(at:2)
print(bucketList2.count)
print(bucketList2[0...2])
bucketList2[2] += " in Australia"
bucketList2[0] = "Climb Mt Timpanogas"
bucketList2
print("---------NeXT EXAMPLE 3----------")
/*
 ------------------------------------
 Refactoring with the addition and assignment operator
 ----------------------------------
 */
var bucketList3 = ["Climb Mt. Everest"]
var newItems3 = ["Fly hot air balloon to Fiji", "Watch the Lord of the Rings triliogy in one day", "Go on a walkabout", "Scuba dive in the Great Blue Hole", "Find a triple rainbow"]

bucketList3 += newItems3
bucketList3
bucketList3.remove(at:2)
print(bucketList3.count)
print(bucketList3[0...2])
bucketList3[2] += " in Australia"
bucketList3[0] = "Climb Mt Timpanogas"
bucketList3.insert("Toboggan across Alaska", at: 2)
bucketList3
print(bucketList3.count)// 6  Items now
// Comparing if things are the same in the list

var myronsList = ["Climb Mt Timpanogas", "Fly hot air balloon to Fiji", "Toboggan across Alaska", "Go on a walkabout in Australia", "Scuba dive in the Great Blue Hole", "Find a triple rainbow"]

let equal = (bucketList3 == myronsList)
print(equal)

/*
 ------------------------------------
Immutable Array
 ----------------------------------
 */
print("---------NeXT EXAMPLE 4--------------")

let lunches = [
"Cheeseburger",
"Veggie Pizza",
"Chicken Bean Burrito",
"Falafel Wrap"
]
print(lunches)
//
print("_______Bronze Challenge____________-")
var toDoList = ["Take out garbage", "Pay bills", "Cross off finished items"]
print(toDoList.count)
print(toDoList.contains("Take out garbage"))
//
if toDoList.isEmpty {
    print("This Array has no elements.")
} else {
    print("This array contains \(toDoList.count) elements.")
}

toDoList.reverse()
print(toDoList)
print("------")
toDoList.reversed().forEach {print($0)}

print("------------Gold Challange----------")


var i = bucketList3.index(of: "Fly hot air balloon to Fiji")
print(i)
