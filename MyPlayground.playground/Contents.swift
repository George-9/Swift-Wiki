import UIKit

// Swift is Case Senseitive

// Data types start with captial letter, whereas variables and constants don't

// Classes = If YOU WANT one shared state that gets passed around and modified in place. You can pass them into functions or store them in arrays, modify them in there, and have that change change reflected in the rest of your program.

// Struct = If YOU WANT to avoid shared state where one copy can't affect all other others. You can pass them into functions or store them in arrays, modifiy them in there and they won't change whereever else they are referenced.

// CLASSES offer more flexbility, whereas STRUCTS offer more safety. ALWAYS use stucts until you have a reason to use classes.

// Static Properties = Properties and Methods that belong to a type, rather than to instances of type.

// Enum - Define own date types

// Functions - define re-usable pieces of code that perform specific pieces of functionality. Usually functions are able to receive some values to modify the way they work, but it's not required.

// Return = -> then a data type. Once you do this, Swift will ensure that your function will return a value no matter what

// ? - An optional - it might or might not

// var = Variable which can always been changed

// let = Constant which is a set value that cannot be changed

// int = Numbers

// bool = Stores whether a value is True or False (ONLY).

// double = Store fractional numbers - has highest accuracy compared to float (which is the same)

// ! = Not operator, makes a statement of the opposite of what it did

// dynamicType = Print out data type of any variable

// && == and

// print () = print text

// someArray.count = Count how many items in array

// break = used to exit a for or while loop and continue on with code below

// continue = only exits within the loop and continues from there

//  override = Changing a method made by parent class - NEEDED to change a method from a parent class - I know this was made by my parent but I want to change it for the subclass.

// Properties = Structs/Classes version of variables/constants. Can assign them values and can also have methods.

// Computed Properties = Code behind the scenes - make stuff happen at an appropriate time

// willSet = Called before a property is changed

// didSet = Called after a property is changed

// newValue = Used in willSet for to assign what the new property value is going to be

// oldValue = Used in didSet to represent the previous value

// get / set = Make an action happen at an appropriate time

// Closures (IMPORTANT) - A variable that holds code. If an Int is 0 or 500 - it holds lines of code. They are a data type that can be passed as parameter or store it as a property.

// IBOutlet - Connection between this and Interface Builder

// weak = We don't want to own the object in memory because its placed within the view, so the view owns it.

// Equal to (a == b) \ Not equal to (a != b) \ Greater than ( a > b) \ Less than (a < b) \ Greater than or equal to (a >= b) \ Less than or equal to ( a <= b)


var name = "Tim Allen" // Auto detects data type e.g string
name = "Tim"  // To change variable just type its given ID
"Your name is \(name)" // String Interpolation - printing the value


var king: String  // Use a type annotation to assign actual value later
king = "Dante"    // Assigng a value to King which is of type String
king == "Dante" // == for check of is equal to in non numbers

var both = name + " and " + king // Join string together


var age = 19; // Variable with an int value
"Your are \(age) years old.In another \(age) years you will be \(age * 2)." // Matchmatics can be done in String Interpolation.

var longitude: Double // Assign double value to variable longitude (done by default with annoatation)

longitude = -86.783333

var userPressedLogOutButton: Bool // Save true/false if user presses log out button
userPressedLogOutButton = true  // User pressed log out button
!userPressedLogOutButton  // Opposite of the current value

//                                                      Numbers

var a = 10
a = a + 1 // + to add
a = a - 1 // - to subtract
a = a * a // * to multiply

var b = 10
b += 10 // += add then assign to. Take current value of b (10), add 10 to it, then put the result back into b.
b -= 10

var c = 1
++c         // ++ = add 1
--c         // -- = subtract 1

c > 1 // Greater than
c >= 1 // Greater than or equal
c  < 2 // Less than


//                                                      Arrays

// Lets you group lots of values together into a single collection, then access those values by their position in the collection

// Postion in array = index - can read by just providing index

//Brackets mark start and end of an array - each item

var oddNumbers = [ 2, 4, 6, 8]
var songs = ["Shake it Off", "You Belong with Me", "Back to December"]
songs.dynamicType // Print out data type of any variable
songs[0] // Swift starts counting arrays from 0
songs[1]
songs[2]

for song in songs {
    print("My Favorite song is \(song)")
}

//                                                  Dictionaries - Let you access vakyes based on a key you specify e.g. First name, Last name rather than index numbers

var person = [

                "first": "Taylor",
                "middle": "Alison",
                "last": "Swifit",
                "month": "December",
                "website": "taylorswift.com"
              ]

// Read any value with key

person ["first"]
person ["website"]


//                                                  IF & else Statements


var action: String
var guy = "hater"

if guy == "hater" {
    action = "hate"
    
} else if guy == "player" {
    
    action = "play"
    
} else {
    action = "cruise"
}

var action2: String
var stayOut = true
var nothingInBrain = true

if stayOut && nothingInBrain { // && = and
    action = "cruise"
}

if !stayOut && !nothingInBrain { // can use ! to check if false
    action = "cruse"
}

//                                              Loops

for i in 1...10 { // Count from 1 to 10 and assign that number the constant i
    print("\(i) x 10 is \(i * 10)")
}

// Can use _ if don't need to know what number on

var str = "Fakers gonna"

for _ in 1...5 {
    str += " fake"
}

// While loops - repeats until you tell it to stop - useful for game loops - when using unknown data

var counter = 0

while true {
    print("Counter is now \(counter)")
    ++counter
    
    if counter == 556 {
        break // used to exit a for or while loop
    }
}

print(str)

//                                          Switch Case - An Advanced IF


// Tell Swift what variable you want to check, and it will provide a list of possible cases for that variable. Swift will find the first case that matches your variable, then run its block of code. When that block finishes, Swift exits the whole switch/case block.

// More advanced - if possibility of your variable having a value you don't check for, Xcode will refuse to build your app

// If values are effectively open ended, like below, you need to include a default case to catch these potential values. Yes, even if you "know" your data can only fall within a certain range.

let liveAlbums = 2

switch liveAlbums {
case 0:
    print("You're just starting out")
    
case 1:
    print("You just released iTunes Live From SoHo")
    
case 2:
    print("You just released Speak Now World Tour")
    
default:
    print("Have you done something new?")
}

//                                                      Functions

func favoriteAlbum(album: String) {
    print("My favourite is \(album)") // Accept one value called album which should be a string
}


//                                                  Return

func albumIsTaylor(name: String) -> Bool {
    if name == "Taylor Swift" { return true }
    if name == "Fearless" { return true }
    if name == "Speak Now" { return true }
    if name == "Red" { return true }
    if name == "1989" { return true }
    
    return false
}

if albumIsTaylor("Red") {
    print("That's one of hers!")
} else {
    print("Who made that?!")
}

if albumIsTaylor("Blue") {
    print ("That's one of hers!")
} else {
    print ("Who made that?!")
}


//                                                      Optionals

func getHaterStatusFirst() -> String { // This will defiantly return a string - has to return a value, no value not possible
    return "Hate"
}

func getHaterStatusAgain() -> String? { // Optional - might return a value might now
    return "Hate"
}

func getHaterStatus(weather: String) -> String? {
    if weather == "sunny" {
        return nil
    } else {
        return "Hate"
    }
}
var status: String?
status = getHaterStatus("rainy")

var willWinTheLottery: Bool?

print(willWinTheLottery)

var noiseWhenIGetTheNews: String?
print(noiseWhenIGetTheNews)

willWinTheLottery = true
noiseWhenIGetTheNews = "Yeahh!"

print(willWinTheLottery)
print(noiseWhenIGetTheNews)

willWinTheLottery = false
noiseWhenIGetTheNews = "Darn"




//                                                      Enumerations

enum WeatherType { // Give name for date type
    case Sun
    case Cloud
    case Rain
    case Wind (speed: Int)
    case Snow  // 5 possible cases the enum can be (must start with Captial letter)
}

func getHaterStatus(weather: WeatherType) -> String? {
    switch weather {
    case .Sun:
        return nil
        
    case .Wind(let speed) where speed < 10:
        return "meh"
        
    case .Cloud, .Wind:
        return "dislike"
        
    case .Rain, .Snow:
        return "hate"
    }
    
}

getHaterStatus(WeatherType.Wind(speed: 5))


//                                                  Structs & Properties
// Made up of multiple values, can create instance and fill in its values, then pass it around as a single value

struct Person {
    var clothes: String {
        willSet { // Called before property is changed
        updateUI("I'm changing from \(clothes) to \(newValue)")
        
        }
        
        didSet { // Called after property is set
            updateUI("I just changed from \(oldValue) to \(clothes)")
        }
        
//        var shoes: String
//    }
//    
//    // Passing in values for the properties above
//    
//    let taylor = Person(clothes: "T-Shirts", shoes: "Sneakers")
//    let other = Person(clothes: "Short-Skirts", shoes: "High Heels")
//    
//    // Print the struct data
//    
//    print (taylor.clothes)
//    print(other.shoes)
    
    }
}

func updateUI(msg: String) {
    print(msg)
}

var taylor = Person(clothes: "T-shirts")
taylor.clothes = "short skirts"


// Computed Properties  - Code behind the scenes, make something happen at an appropirate time

struct PersonAge {
    var age: Int
    
    var ageInDogYears: Int {
        get { // Make an action happen at the appropriate time
            return age * 7
        }
    }
}

var fan = PersonAge(age: 25)
print(fan.ageInDogYears)



//                                                  Classes
// You don't get an  automatic memberwise intializer for your classes - need to write own.
// Can define a class as being based off another class, adding any new things you want.
// If you copy an object, both copies point at the same data by default.

class PersonClass {
    
    var clothes: String
    var shoes: String
    
    // memberwise intializer - required
    
    init(clothes: String, shoes: String) {
        self.clothes = clothes
        self.shoes = shoes
    }
}


// Class Inheritance - Build on each other, used in most basic programs.

// First a new class

class Singer {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func sing() {
        print("La la la la")
    }
}

var Jayden = Singer(name:"Jayden", age: 25)
Jayden.name
Jayden.age
Jayden.sing()


// Now to inherit the Singer class

class CountrySinger: Singer { // We now have a subclass
    override func sing() { // Changing a method made by parent class - NEEDED to change a method from a parent class
    print("Trucks. girls. and liquor")
        
        // Modify the object
        
    var Jayden = CountrySinger(name: "Jayden", age: 25)
        Jayden.sing()
}
}


// Another subclass

class HeavyMetalSinger: Singer {
    var noiseLevel: Int
    
    init(name: String, age: Int, noiseLevel: Int) {
        
        self.noiseLevel = noiseLevel
        super.init(name: name, age: age)  // call a method on the class inherited from
    }
    
    override func sing() {
    print("Grrrrr rargh rargh rarrrgh!")
}
}

//                                                                                      Static Properties


// Fan has name and age that belongs to them but, they all have the same favorite song.

// Static methods belong to the class rather than instances of class, you can't use it to access and non-static properties from the class.

struct TaylorFan {
    static var favoriteSong = "Shake it Off"
    
    var name: String
    var age: Int
}

let thefan = TaylorFan(name: "May", age: 20)
print(TaylorFan.favoriteSong)


//                                                                              Closures


let vw = UIView() // Basic UI


 // Change the way interface looks during animation, describe whats changing over how many seconds

// Has to be closure becuase UIKit has to do all sorts of work to prepare for the animation to begin.

// UIKit takes a copy of the code in braces (closure) stores it away, does all its prep work and then runs the code when its ready. Not possible if running code directly.

// If the last parameter to a method takes a closure, you can eliminate that parameter and instead provide it as a block of code.

UIView.animateWithDuration(0.5) { // duration and closure containing the code to be executed as part of the animatioon
    vw.alpha = 0 //closure to adjust the view's alpha (opacity) to 0, which means completely transparent
}


//                                                                  Nil

var errorCode: String? = "Bad Error!"
print(errorCode)

if errorCode != nil {
    print("Stop, we have an error.")
}

var errorType: String?
var errorMessage: String? = "Uh Oh"
var badLinesOfCode: Int?

print(errorType)
print(errorMessage)
print(badLinesOfCode)

errorType = "Warning"
errorType = "Ignore for now, we're on a deadline"
badLinesOfCode = 2

print(errorType)
print(errorMessage)
print(badLinesOfCode)

errorType = nil
print(errorType)

//                                                                  IF Unwrap - Optional

var doesTheOptionalExist: Int?
doesTheOptionalExist = 10

if doesTheOptionalExist != nil {
    print(doesTheOptionalExist)
}

var errorCodeOptional: Int?
print(errorCodeOptional)

errorCodeOptional = 404
if errorCodeOptional != nil {
    print(errorCodeOptional)
    
    print(errorCodeOptional!)
}

var regularOptional: String? = "What do I look like when printed?"
print(regularOptional)
print(regularOptional!)

var noValue: Int?

print(noValue)

var errorTypeOptional: String? = "Warning"
if errorTypeOptional != nil {
    let nonOptionalErrorType = errorTypeOptional!
    print(nonOptionalErrorType)
}


//                                                                 Optional Bindings


var favoriteSong: String?
favoriteSong = "Wild Horses"

if var currentFavorite = favoriteSong {
    print (currentFavorite)
    
    print (favoriteSong)
}

if favoriteSong != nil {
    var currentFavorite = favoriteSong!
    print(currentFavorite)
    print(favoriteSong)
}

favoriteSong = nil

if let currentSong = favoriteSong {
    print(currentSong)
}

favoriteSong = "Fall Sog Bombs the Moon"
var favoriteArtist: String? = "David Bowie"
var favoriteAlbum: String? = "Heathen"
var nilValue: String?


if let currentArtist = favoriteArtist, currentAlbum = favoriteAlbum, currentSong = favoriteSong {
    print("Now we have overselves a party")
    print(currentSong)
    print(currentArtist)
    print(currentAlbum)
}

if let currentSong = favoriteSong, hasValue = nilValue {
    print("This will not work if even one of them is nil!")
}



var favoriteRapper: String?
favoriteRapper = "Kanye West"

var bestSong: String?

bestSong = "Can't Tell Me Nothing"

var bestAlbum: String?

bestAlbum = "Graduation"


if let bestRapper = favoriteArtist, bestSongEver = bestSong, bestAlbumEver = bestAlbum {
    print(bestRapper)
    print(bestSongEver)
    print(bestAlbumEver)
}



//                                                          Implicitly Unwrapped Optional

let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // requires an !

let assumedString: String! = "An implicitly unwrapped optional string/" // Adding ! for a var/constant promises it will have a value
let implicitString: String = assumedString // no need for an !



var favouriteSong: String?
print(favouriteSong)

favouriteSong = "Slow Burn"
//: regular optional
print(favouriteSong)
//: unwrapped optional
print(favouriteSong!)

//: Implciitly unwrapped optional
let implicitlyUnwrappedFavouriteSong: String! = favouriteSong
//: not an optional
print(implicitlyUnwrappedFavouriteSong)

// New force unwrapped constant
let forceUnwrapped = favouriteSong!
print(forceUnwrapped)

let assumedSong: String! = "Cactus"



//                                                              Assertion

// An assertion evaluates a condition to be true, if it is not true no further code is executed - it is like wrapping our code inside an if statement for that condition

let itemPrice: Int = -5

// assert(itemPrice >= 0, "Prices can only be a positive number")


//                                                              Compound Assignment Operators

var intialNumber: Int = 1
intialNumber += 3

print(intialNumber)

intialNumber = intialNumber + 3




//                                                              Comparison Operators

// Equal to (a == b) \ Not equal to (a != b) \ Greater than ( a > b) \ Less than (a < b) \ Greater than or equal to (a >= b) \ Less than or equal to ( a <= b)

let knownNumber = 3
var unknownNumber: Int?

let numberTest = unknownNumber != knownNumber

print(numberTest)

let numbersAreTheSame = unknownNumber == knownNumber
if numbersAreTheSame {
    
    print("Hey, both numbers are the same")
    
}
else {
    print ("Nope, not the same")
    
}
unknownNumber = knownNumber
print(unknownNumber)
let sameNumbers = (unknownNumber == knownNumber)
if sameNumbers {
    print ("Hey, both are the same")
}

if knownNumber == unknownNumber {
    print("Both numbers are the same")
}
else {
    print("The numbers are different")
}

let smallCat = "cat"
var bigCat = "Cat"

if smallCat == bigCat {
    print("Both cats are equal")
}

else {
    print("How come these cats are different?")
}

bigCat = "cat"

if smallCat == bigCat {
    print ("Both cats are equal")
}
else {
    print("How come these cats are different")
}

bigCat = "cat"

if smallCat == bigCat {
    print("Both cats are equal")
}
else {
    print("Oops, I thought they would be the same!")
}


if smallCat == "cat" {
    print("I found my cat!")
}


3 != 5
2 == 2
7 > 3
6 >= 6
4 <= 5


3 == 7
2 > 8
4 >= 10


//                                                                                                                              Ternary Conditional Operator
//                                                                                                                              question ? answer 1: answer 2: - Evalaute one of two expressions based on whether a question is true or false


var itsRaining = true
var shouldITakeMyUmbrella = (itsRaining ? " yes" : "no")

if itsRaining {
    shouldITakeMyUmbrella = "yes"
}

else {
    shouldITakeMyUmbrella = " no"
}


var iLoveSwift = true
var iHateAssembly = true

var iAmASwiftDeveloper = (iLoveSwift ? true: false)


let iAmPrettyOld = (iHateAssembly ? "Yes you are if you know what Assembly Language is." : "Not necessarily")

let itIsDark = true
var mySwitchState = (itIsDark ? "on": "off")

let mySwitchStateBool = (itIsDark ? true: false)


//                                                                                                                      Nil Coalescing Operator 
//                                                                                                                      Unwraps an optional a if it contains a value, or returns a default b if a is nil.

let defaultColorname = "red"
var userDefinedColorName: String? // defaults to nil

var colorNameToUse = userDefinedColorName ?? defaultColorname

// userDefinedColorName is nil, so colorNameToUse is set to the default of "red"

let myFavoriteSong = "Cactus"
var yourFavoriteSong: String?

var songToPlay = yourFavoriteSong ?? myFavoriteSong // if yourFavoruteSong is nil then replace value with myFavoriteSong
print("We will now play: \(songToPlay)")

yourFavoriteSong = "Afraid"
songToPlay = yourFavoriteSong ?? myFavoriteSong
print("We will now play: \(songToPlay)")


let aa  = 1
let bb = 2

var x = aa ?? bb


//                                                                                                              Range Operators

for number in 1...3 {
    print("number is now: \(number)")
    
    print ("Something else")
}

for number in 1..<3 {
    print(number)
}


//                                                                                                              Logical Operators 




var allowed: Bool = false

if !allowed {
    print("Sorry, you can't do that, Dave.")
}

allowed = true

if allowed {
    print("Yes, we can!")
}

let  itsRainingAgain = false
if !itsRainingAgain {
    print("No need for the umbrella")
}

let notAllowed = true
if !notAllowed {
    print("Now I'm confused")
}

var daveHasBeenAGoodBoy = true
var halIsFeelingGood = true

if daveHasBeenAGoodBoy && halIsFeelingGood {
    print ("You might just survive.")
}
else {
    print("No one is getting out of here")
}

halIsFeelingGood = false

if daveHasBeenAGoodBoy && halIsFeelingGood {
    print("You might just survive.")
}
else {
    print("No one is getting out of here")
}

let spaceWillKillYou = true

if daveHasBeenAGoodBoy && halIsFeelingGood && spaceWillKillYou {
    print ("You might just survive")
}
else {
    print("No one is getting out of here.")
}

var halIsCrazy = true
var daveMisbehaved = false

if halIsCrazy || daveMisbehaved {  // Or
    print("Something bad will happen")
}

var airlockIsOpen = false
halIsFeelingGood = true

if halIsCrazy && halIsFeelingGood && daveHasBeenAGoodBoy || airlockIsOpen {
    print("There's some hope yet.")
}

if (halIsCrazy && halIsFeelingGood && daveHasBeenAGoodBoy) || airlockIsOpen {
    print("There's some hope yet.")
}
