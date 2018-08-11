var movieRatings = ["Donni Darko": 4, "Chungking Express": 5, "Dark City": 4]
print("I have rated \(movieRatings.count) movies.")
// ---- Reading the values.. Value. Key
let darkoRating = movieRatings["Donni Darko"]
print(darkoRating)
//
movieRatings["Dark City"] = 5
//
let oldRating: Int? = movieRatings.updateValue(5, forKey: "Donni Darko")
if let lastRating = oldRating, let currentRating = movieRatings["Donni Darko"] {
    print("Old rating: \(oldRating); current rating: \(currentRating)")
}
//
print("-------Next Example----------------")
movieRatings["The Cabinet of Dr. Caligari"] = 5
print(movieRatings)
print("-------Next Example----------------")
//movieRatings.removeValue(forKey: "Dark City") // THeres another way to do this
movieRatings["Dark city"] = nil
/*
 ----------------------------
 Looping through the dictionary
 -----------------------------
 */
for (key, value) in movieRatings {
    print("the movie \(key) was rated \(value).")
}
print("-------Next Example----------------")
for movie in movieRatings.keys {
    print("Karla has rated \(movie)")
}

print("-------Next Example----------------")
for (key, value) in movieRatings {
    print("It shold b noted, Karla fell asleep while watching \(key) and she rated it \(value).")
}

print("-------Next Example----------------")
for ratings in movieRatings.values {
    print("Ivan has never seen a movie get a \(ratings) before.")
}
/*
 ----------------------------
 Immutable dictionary
 -----------------------------
 */

let album = [
    "Diet Roast Beef": 268,
    "Dubba Dubs Stubs His Toe": 467,
    "Smokey's Carpet Cleaning Service": 187,
    "Track 4": 221]
print("-------Next Example----------------")
// album.removeValue(forKey: "Diet Roast Beef") <- ERROR due to the album been Immutable "Let"
/*
 ----------------------------
Sending Keys to an Array
 -----------------------------
 */
let watchedMovies = Array(movieRatings.keys)
print(watchedMovies)
print("-------Challenge ----------------")
// key & value
//var utahInfo: [Int: String] = ["Davis county": "8001", "8009", "87631", "39203", "9189"]

    //, "Salt Lake County": ["84012", "89902", "89763", "80282", "82321"], "UtahCounty": ["8061", "8609", "87661", "36203", "91689"]
//Ch 10 Dictionary Silver Challenge
var utahInfo = ["SLC": ["893","333", "3432", "332"], "UC": ["2232","2111", "00983", "3938"], "DC": ["3827", "9382", "3322"]]

let zipCodes = Array(utahInfo.values)

print("Utah has the following zip codes.\(zipCodes).")

print("-----------")



