var myGrocery: Set = ["Pizza", "Oranges", "pickles"]
let friendGro: Set = ["Pizza", "Water Melon", "soap"]
myGrocery.formUnion(friendGro)
print(myGrocery)
//-----------



enum FamilyTree {
    case noKnownParents
    indirect case oneKnownParent(name: String, ancestors: FamilyTree)
    indirect case twoKnownParents(fatherName: String, fatherAncestors: FamilyTree, motherName: String, motherAncestors: FamilyTree)
}

let fredAncesors = FamilyTree.twoKnownParents(fatherName: "Fred Sr", fatherAncestors: .oneKnownParent(name: "Beth", ancestors: .noKnownParents), motherName: "Marsha", motherAncestors: .noKnownParents)
//print(fredAncesors)

enum ShapeDimensions {
    // Point has no associated value - it is dimensionless
    case Point
    
    // Square's associated value is the length of one side
   
    
    // Rectangle's associated value defines it's width and height
   
    
    case AreRect(width: Double, height: Double)
    
    func perimeter() -> Double {
        switch self {
        case .Point:
            return 0
            
            
        case let .AreRect(width: w, height: h):
            return (w * 2) + (h * 2)
        }
    }
}


var AreRectShape = ShapeDimensions.AreRect(width: 4, height: 4)


print(AreRectShape.perimeter())






