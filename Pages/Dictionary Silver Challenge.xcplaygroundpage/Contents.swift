//Ch 10 Dictionary Silver Challenge
var utahInfo = ["SLC": ["893","333", "3432", "332"], "UC": ["2232","2111", "00983", "3938"], "DC": ["3827", "9382", "3322"]]

let zipCodes = Array(utahInfo.values)

for (_, zips) in utahInfo {
    print("Utah has the following zip codes: \(zips.joined(separator: ", ")).\n")
}

zipCodes
print("-------break----------------")

var utahInfo9 = ["Davis county": 8001, "Salt Lake County": 82321, "Utah County": 84003]
//
let zipCodes3 = Array(utahInfo9.values)

print("Utah has the following zip codes: \(zipCodes3).")
