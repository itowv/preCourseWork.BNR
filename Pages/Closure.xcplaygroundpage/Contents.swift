/*let volunteerCounts = [1,3,40,3,2,53,77,13]
func sortAscending(_ i: Int, _ j: Int) -> Bool {
    return i < j
}
let volunteersSorted = volunteerCounts.sorted(by: sortAscending)
*/
/* ------------------
 Code re done to make it clearner
----------------------------------
 */
/*
 let volunteerCounts = [1,3,40,3,2,53,77,13]
let volunteerSorted = volunteerCounts.sorted(by: {
    (i: Int, j: Int) -> Bool in
    return i < j
}) // the parentasis close it off

print(volunteerSorted)
*/
/* ------------------
 Code re done to make it clearner
 ----------------------------------
 */
/*
let volunteerCounts = [1,3,40,3,2,53,77,13]
let volunteerSorted = volunteerCounts.sorted(by: { i, j in i < j })
print(volunteerSorted)
*/
/* ------------------
 Code re done to make it clearner
 ----------------------------------
 */
/*
let volunteerCounts = [1,3,40,3,2,53,77,13]
let volunteerSorted = volunteerCounts.sorted(by: {$0 < $1 })
print(volunteerSorted)
*/

/* --------------------------------
 Code re done to make it clearner
 ----------------------------------
 */

var volunteerCounts = [1,3,40,3,2,53,77,13]
let volunteerSorted = volunteerCounts.sorted { $0 < $1}
print(volunteerSorted)

/* --------------------------------
Func as return types
 ----------------------------------
 */
/*
func makeTownGrand() -> (Int, Int) -> Int { // no argument, but returns func. 2 int and returns an int.
    func buildRoads(byAddingLights lights: Int, // nested func
                    toExisttingLights existingLights: Int) -> Int {
                        return lights + existingLights
    }
    return buildRoads
}

// Next Step

var stoplights = 4
let townPlanByAddingLightsToExistingLights = makeTownGrand()
stoplights = townPlanByAddingLightsToExistingLights(4, stoplights)
print("Knowhere has \(stoplights) stoplights.")

*/

/* --------------------------------
 Funcs as Arguments
 ----------------------------------
 */

func makeTownGrand(withBudget budget: Int,
                   condition: (Int) -> Bool) -> ((Int, Int) -> Int)? {
    if condition(budget) {
        func buildRoads(byAddingLights lights: Int, toExistingLights: Int) -> Int {
            return lights + toExistingLights
        }
        return buildRoads
    } else {
        return nil
    }
}
func evaluate(budget: Int) -> Bool {
    return budget > 10_000 // the Bool will trigger if the town can build the roads/lights
}

var spotlights = 4

    if let townPlanByAddingLightsToExistingLights = makeTownGrand(withBudget: 10_500, condition: evaluate) { // optional binding
spotlights = townPlanByAddingLightsToExistingLights(4, spotlights)
}
print("Knowhere has \(spotlights) stoplights.")



/* --------------------------------
 Closure Capture Values
 ----------------------------------
 */
// census will be udpated every time pop increases by 500

func makePopulationTracker(forInitialPopulation population: Int) -> (Int) -> Int {
    var totalPopulation = population
    func populationTracker(growth: Int) -> Int {
        totalPopulation += growth
        return totalPopulation
    }
    return populationTracker
}

var currentPopulation = 5_422
let growby = makePopulationTracker(forInitialPopulation: currentPopulation)
growby(500)
growby(500)
growby(500)
currentPopulation = growby(500) //current population


/* --------------------------------
 Closures are Reference Types
 ----------------------------------
 */
let anotherGrowBy = growby
anotherGrowBy(500)// population inreased


// Next city

var bigCityPopulation = 4_061_981
let bigCityGrowBy = makePopulationTracker(forInitialPopulation: bigCityPopulation)
bigCityPopulation = bigCityGrowBy(10_000)
currentPopulation // distinct from the actual growth. due to it being a differnt variable


/* --------------------------------
 -------Func Programming
 ----------------------------------
 */

/* --------------------------------
Using map to estimate population
 ----------------------------------
 */
let precinctPopulation = [1244, 2021, 2157]
let projectedPopulations = precinctPopulation.map {  // estimate population
    (population: Int) -> Int in
    return population * 2
}
projectedPopulations // increased by 200%

// Filter(_:) well be a good choice to estimate what citys well havea projected pop. greater than 4,000 people
/* --------------------------------
Filter an array
 ----------------------------------
 */

let bigProjections = projectedPopulations.filter {
    (projected: Int) -> Bool in
    return projected > 4000
}
bigProjections


/* --------------------------------
 Reduce(_:_)
 ----------------------------------
 */

let totalProjection = projectedPopulations.reduce(0) {
    (accumullateProjection: Int, precinctPopulation: Int) -> Int in
    return accumullateProjection + precinctPopulation
}
totalProjection




//--- sorty in place
var volunteerCounts5 = [1,3,40,3,2,53,77,13]
volunteerCounts5.sort {
return $0 < $1 // returns Int and not a new array, which makes it "in Place"
}
print(volunteerCounts5)


/// -- sort by in place

var volunteerCounts2 = [1,3,40,3,2,53,77,13]

volunteerCounts2.sort (by:>)
print(volunteerCounts2)


// --------

let totalProjection9 = projectedPopulations.reduce(0) {
    (accumullateProjection: Int, precinctPopulation: Int) -> Int in
    return accumullateProjection + precinctPopulation
}
totalProjection


// Shorten version of above code

let totalPopulation = projectedPopulations.reduce(0) { $0 + $1}
totalPopulation
print(totalPopulation)



































