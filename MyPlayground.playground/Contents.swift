import UIKit
// () means "create one now". Signals the name of some other code that should be run. 

//                                                      Variables


var name = "Tim Allen" // Auto detects data type e.g string = Type Ineference
name = "Tim"  // To change variable just type its given ID
"Your name is \(name)" // String Interpolation - printing the value


var king: String  // Use a type annotation to assign actual value later
king = "Dante"    // Assigng a value to King which is of type String
king == "Dante" // == Is it equal too

var both = name + " and " + king // Join string together

var age = 19; // Variable with an int value
"Your are \(age) years old.In another \(age) years you will be \(age * 2)." // Matchmatics can be done in String Interpolation.

// The backslash followed by a quotation mark is an escape sequence.
let favoriteQuotation = "Hamlet said, \"To be, or not to be?\""	

// Escape scquence most commonly used for new line
let startOfAPoem = "Roses are red.\nViolets are blue."

//                                                  Static
//               Static variables are shared through all instances of a class. When you change the variable ffor a static, that property is now change in all future instances

class Vehicle {
    var car = "Lexus"
    static var suv = "Jeep"
}

// changing nonstatic variable
Vehicle().car // Lexus
Vehicle().car = "Mercedes"
Vehicle().car // Lexus

// changing static variable
Vehicle.suv // Jeep
Vehicle.suv = "Hummer"
Vehicle.suv // Hummer



//                                                  Float and Double
var latitude : Double
latitude = 36.166667        // Double is more accurate (x2 than float), recommeded by Apple

var longitude: Float        // Less storage space, Swift will remove end nubmers of Float
longitude = -86.783333
longitude = -186.783333

//                                                    Opertators

var a = 10
a = a + 1 // + to add
a = a - 1 // - to subtract
a = a * a // * to multiply

var b = 10
b += 10 // += add then assign to. Take current value of b (10), add 10 to it, then put the result back into b.
b -= 10

var aDouble = 1.1 // Applies to other data types too
var bDouble = 2.2
var cDouble = aDouble + bDouble


cDouble > 3 // Greater than
cDouble >= 3 // Greater than or equal
cDouble  < 4 // Less than

// ! Not Operator, makes your statement the opposite of what it did
var outTooLate = true
outTooLate
!outTooLate // sets it to false, can also use != to make not equal



//                                                  Boolean
//                                   Data Type to store if True or False only
var stayOutTooLate: Bool
stayOutTooLate = true

var nothingInBrain: Bool
nothingInBrain = false


//                                                      Arrays

// Lets you group lots of values together into a single collection, then access those values by their position in the collection
// someArray.count = Count how many items in array

var evenNumbers = [ 2, 4, 6, 8]
var songs = ["Shake it Off", "You Belong with Me", "Back to December"]
var moreSongs: [Any] = ["Shake it Off", "You Belong with Me", "Back to December", 3] // Use Any to hold any kind of data
type(of: songs) // Find out Data Type Swift is infering for the array
songs[0] // Swift starts counting arrays from 0, postion called Index
songs[1]
songs[2]

for song in songs {
    print("My Favorite song is \(song)")
}

// Empty Array - fill it later
var songsLater: [String] = []

//                                                  Sets
//                                                  Use when no order needed or ensure item only appears once

var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items.")

letters.insert("a") // letters now contains 1 value of type Character

var favouriteGeneres: Set<String> = ["Rock", "Classical", "Hip-hop"]

//                                                  Dictionaries
//              Let you access values based on a key you specify e.g. First name, Last name rather than index numbers. Store wide variety like Arrays.

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


//                                                  Conditional Statements / If & Else


var action: String
var guy = "hater"

// Checks each condition in order

if guy == "hater" {
    action = "hate"
} else if guy == "player" {
    action = "play"
} else {
    action = "cruise"
}

var action2: String
var stayOut = true
var nothingInBrainAgain = true

if stayOut && nothingInBrainAgain { // && = and
    action2 = "cruise"
}

if !stayOut && !nothingInBrainAgain { // can use ! to check if false
    action2 = "cruse"
}

//                                              Loops

for i in 1...10 { // Count from 1 to 10 and assign that number the constant i
    print("\(i) x 10 is \(i * 10)")
}

// Can use _ if don't need to know what number on

var str = "Fakers gonna"

// Faster as doesn't have to assign count to variable

for _ in 1...5 {
    str += " fake" // runs whatever in here X times
}

// Looping over arrays
for song in songs {
    print("My favourite song is \(song)")
}

// Can loop multiple arrays and set it to run until the amount in array

var people = ["players", "haters", "heart-breakers", "fakers"]
var actions = ["play", "hate", "break", "fake"]

for i in 0 ..< people.count {
    print("\(people[i]) gonna \(actions[i])")
}



// While loops - repeats until you tell it to stop - useful for game loops - when using unknown data

var counter = 0

while true {
    print("Counter is now \(counter)")
    counter += 1
    
    if counter == 556 {
        break // used to exit a for or while loop
    }
}

// Continue keeps the loop going

for song in songs {
    if song == "You Belong with Me" {
        continue
    }
    print("My favourite song is /(song)")
}


//                                          Switch Case - An Advanced IF
// Tell Swift what variable you want to check, then provide a list of possible cases for that variable. Swift will find the first case that matches your variable, then run its block of code. When that block finishes, Swift exits the whole switch/case block.

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

let meal = "breakfast"

switch meal {
case "breakfast":  print("Good morning!")
case "lunch":  print("Good afternoon!")
case "dinner":  print("Good evening!")
default: print("Hello!")
}


// Check for range of values

let studioAlbums = 5

switch studioAlbums {
case 0...1:
    print("You're just starting out")
    
case 2...3:
    print("You're a rising star")
    
case 4...5:
    print("You're world famous!")
    
default:
    print("Have you done something new?")
}


//                                                      Functions

func favoriteAlbum(album: String) {
    print("My favourite is \(album)") // Accept one value called album which should be a string
}

favoriteAlbum(album: "Get Rich or Die Tryin") // Calling the function and specifiying the value of the parameter

func printAlbumRelease(name: String, year: Int) {
    print("\(name) was released in \(year)")
}

printAlbumRelease(name: "Fearless", year: 2008)
printAlbumRelease(name: "Speak Now", year: 2010)
printAlbumRelease(name: "Red", year: 2012)

func calculateTip(priceOfMeal: Double) -> Double {  // Must return value specified > (return this value)
    return priceOfMeal * 0.15
}

func isPastBedtime(hour: Int) -> Bool {
    if hour > 9 {
        return true
    } else {
        return false
    }

    // Can have two parameter names for one variable
    
    func countLettersInString(myString str: String) {           // myString = outside function / str = inside function
        print("The string \(str) has \(str.count) letters.")
    }
    
    countLettersInString(myString: "Hello")
    
    // Can use _ to tell Swift to have no external name at all
    
    func countLettersInStringAgain(_ str: String) {
        print("The string \(str) has \(str.count) letters.")
    }
    
    countLettersInStringAgain("Hello")
    
    // Best way is to use external names like "in", "for" and "with"
    
    func countLetters(in string: String) {
        print("The string \(string) has \(string.count) letters.")
    }
    countLetters(in: "Hello")

//                                                  Return Values

func albumIsTaylor(name: String) -> Bool {          // Must return value specified no matter what
    if name == "Taylor Swift" { return true }
    if name == "Fearless" { return true }
    if name == "Speak Now" { return true }
    if name == "Red" { return true }
    if name == "1989" { return true }
    
    return false
}

if albumIsTaylor(name: "Red") {
    print("That's one of hers!")
} else {
    print("Who made that?!")
}

if albumIsTaylor(name: "Blue") {
    print ("That's one of hers!")
} else {
    print ("Who made that?!")
}

    
//                                                      Guard Statements
//                                                      Must require condition to be true in order for code after the guard statement to be executed. Always has else clause which is executed if condotion is not true
    
    func greet(person: [String: String]) {
        guard let name = person["name"] else {
            return
        }
        print("Hello \(name)!")
    }

//                                                      Optionals

func getHaterStatusFirst() -> String { // This will defiantly return a string - has to return a value, no value not possible
    return "Hate"
}

func getHaterStatusAgain() -> String? { // Optional - might return a value or might not ?
    return "Hate"
}

func getHaterStatus(weather: String) -> String? {
    if weather == "sunny" {
        return nil
    } else {
        return "Hate"
    }
}
    
var status = getHaterStatus(weather: "rainy") // Swift infers this is of type ? because a String return is not guranteed
    
// Optional Unwrapping
    
    if let unwrappedStatus = status {
        // unwrappedStatus contains a non-optional value!
    } else {
        // in case you want an else block, here you go…
    }
    
    // Unwrapping the optional value from getHaterStatus function above
    
    func takeHaterAction(status: String) {
        if status == "Hate" {
            print("Hating")
        }
    }
    
    if let haterStatus = getHaterStatus(weather: "rainy") {
        takeHaterAction(status: haterStatus)
    }

    
// Force Unwrapping Optionals
// Override safety by using ! if you know an option 100% has a value, you can unwrap it with ! after it / code crash if no value
    
    func yearAlbumReleased(name: String) -> Int? { // Has to be optional because nil used below is not of type Int
        if name == "Taylor Swift" { return 2006 }
        if name == "Fearless" { return 2008 }
        if name == "Speak Now" { return 2010 }
        if name == "Red" { return 2012 }
        if name == "1989" { return 2014 }
        
        return nil
    }
    
    var year = yearAlbumReleased(name: "Red")
    
    if year == nil {
        print("There was an error")
    } else {
        print("It was released in \(year!)") // I know it has a value so unwrap it!
    }


//  Implicitly Unwrapped Optional
//  Might contrain a value, might not. Does not to be unwrapped before it is used. Swift won't check for you.
//  Lets you access the value with unwrapping safely, if you do so it means you know there is a value there.
    
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
    
// Optional Chaining
// Only runs the code if your optional has a value
    
    func albumReleased(year: Int) -> String? {
        switch year {
        case 2006: return "Taylor Swift"
        case 2008: return "Fearless"
        case 2010: return "Speak Now"
        case 2012: return "Red"
        case 2014: return "1989"
        default: return nil
        }
    }
    
    let album = albumReleased(year: 2006)?.uppercased() // If we get a string, make it uppercase, otherwise do nothing. Everything after the ? will only run if everything before it has value
    print("The album is \(album)")
    
// Nil Operator
    
let albumTwo = albumReleased(year: 2006) ?? "unknown" // Use Value A if you can, if it nil then use Value B instead! We always have a value that way.
print("The album is \(albumTwo)")


//                                                      Enumerations

enum WeatherType { // Give name for date type and the values it can hold below
    case sun
    case cloud
    case rain
    case wind (speed: Int) // Can attach values to them with defined type
    case snow
}

func getHaterStatusWeather(weather: WeatherType) -> String? {   // Starts from top, will end once case is met
        switch weather {
        case .sun:
            return nil
        case .wind(let speed) where speed < 10: // Get hold of speed value, use where to check if less than 10
            return "meh"
        case .cloud, .wind:
            return "dislike"
        case .rain, .snow:
            return "hate"
        }
    }
    
    getHaterStatusWeather(weather: WeatherType.wind(speed: 5))


//                                                  Structs
// Made up of multiple values, can create instance and fill in its values, then pass it around as a single value
// If YOU WANT to avoid shared state where one copy can't affect all other others. You can pass them into functions or store them in arrays, modifiy them in there and they won't change whereever else they are referenced.
    
    struct Person {
        var clothes: String
        var shoes: String
        
        // Can write Functions in Structs
        func describe() {                   // When used inside Structs = Methods
            print("I like wearing \(clothes) with \(shoes)")
        }
    }

    let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
    let other = Person(clothes: "short skirts", shoes: "high heels")
    
    print(taylor.clothes)
    print(other.shoes)

    struct Student {
        let name: String
        var age: Int
        var school: String
    }
    var ayush = Student(name: "Ayush Saraswat", age: 19, school: "Udacity")
    
    struct Point2D {
        var x: Int = 0
        var y: Int = 0
    }
    var characterPosition = Point2D(x: 10, y: 10)


//                                                  Classes
// You don't get an  automatic memberwise intializer for your classes - need to write own.
// Can define a class as being based off another class, adding any new things you want - INHERITHANCE
// Instance on Class = Object. If you copy an object, both copies point at the same data by default and change together too
    
// Classes = If YOU WANT one shared state that gets passed around and modified in place. You can pass them into functions or store them in arrays, modify them in there, and have that change change reflected in the rest of your program.
    
// CLASSES offer more flexbility, whereas STRUCTS offer more safety. ALWAYS use stucts until you have a reason to use classes.

class PersonClass {
    
    var clothes: String
    var shoes: String
    
    // memberwise intializer - required
    
    init(clothes: String, shoes: String) {
        self.clothes = clothes              // Have to use self because same name as properties
        self.shoes = shoes                     // Non optional propities must have value by end of intitializer or by time intializer calls any other method
    }
}

// Class Inheritance - Build on each other, used in most basic programs.

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
    override func sing() { // Changing a method made by parent class - override NEEDED to change a method from a parent class
    print("Trucks. girls. and liquor")
    // Modify the object
    var Jayden = CountrySinger(name: "Jayden", age: 25)
        Jayden.sing()
    }
}

// Another subclass

class HeavyMetalSinger: Singer {
    var noiseLevel: Int
    
    init(name: String, age: Int, noiseLevel: Int) { // Needed init because Noise Level is new and to pass on name and age to superclass Singer
        
        self.noiseLevel = noiseLevel
        super.init(name: name, age: age)  // call a method on the class inherited from, needed to pass on the data
    }
    
    override func sing() {
    print("Grrrrr rargh rargh rarrrgh!")
}
}
    
// Another Class example
    
    class Guitar {
        let strings: Int
        let frets: Int
        
        init(strings: Int, frets: Int) {
            self.strings = strings
            self.frets = frets
        }
        
        func pluckString() {
            print("twang")
        }
    }
    
    class ElectricGuitar: Guitar {
        var volumeLevel: Float = 1.0
        var toneLevel: Float = 1.0
            // Can also override method from other classes
        override func pluckString() {
            if volumeLevel > 0.7 {
                print("🎸🎸🎸 DRAOWWW")
            } else if volumeLevel > 0 {
                print("🎸 twang")
            } else { // volumeLevel is 0
                // Guitar's implementation of pluckString()
                super.pluckString() // super = call function from inherit class
            }
        }
    }
    

    
    

//                                                                                      Properties
// Structs and Classes (Types) have variables and constants = properties


struct PersonTwo {
        var clothes: String
        var shoes: String
        
        func describe() {
            print("I like wearing \(clothes) with \(shoes)")
        }
    }
    // Property inside a method will auto use the value that belongs to the same object
    let taylorTwo = PersonTwo(clothes: "T-shirts", shoes: "sneakers")
    let otherTwo = PersonTwo(clothes: "short skirts", shoes: "high heels")
    taylorTwo.describe()
    otherTwo.describe()
    
// Property Observers
// Swift lets you add code to be run when a propety is about to be change or has been changed. Good way to have UI update when value changes

    struct PersonThree {
        var clothes: String {
            willSet {         // newValue = What the new property value is going to be
                updateUIAgain(msg: "I'm changing from \(clothes) to \(newValue)")
            }
            
            didSet {          // oldValue to represent previous value
                updateUIAgain(msg: "I just changed from \(oldValue) to \(clothes)")
            }
        }
    }
    
    func updateUIAgain(msg: String) {
        print(msg)
    }
    
    var taylorThree = PersonThree(clothes: "T-shirts")
    taylorThree.clothes = "short skirts"

// Computed Propeties

    struct PersonDog {
        var age: Int
        
        var ageInDogYears: Int {
            get {               // get/set = make action happen at the appropriate time
                return age * 7
            }
        }
    }
    
    var fan = PersonDog(age: 25)
    print(fan.ageInDogYears)  // Call the get method
    
// Static Properties and Methods = Belong to a Type, rather than to instances of Type
    
    struct TaylorFan {
        static var favoriteSong = "Look What You Made Me Do"    // Every Taylor Fan has same favourite song
        
        var name: String
        var age: Int
    }
    
    let fanTaylor = TaylorFan(name: "James", age: 25)
    print(TaylorFan.favoriteSong)
    
//                                                      Access Control
// Lets you specify what data inside Struts and Classes should be exposed to the outside world
    // Public: Everyone can read and write the propety
    // Intenral: Only your Swift code can read/write the property. If you ship your code as framework for others, they won't be able to read the property
    // File Private: Only Swift code in the same file as the type can read/write the property
    // Private: Most restrictive, property is only avaiable inside methods that belong to the type or its extensions
    
    class SecretTaylorFan {
        private var name: String!
    }

//                                                        Polymorphism and Typecasting
// Classes can inherit from each other, so Class B has everything Class A has with a few extras. This means you can treat B as type B oy type A
    
    class Album {
        var name: String
        
        init(name: String) {
            self.name = name
        }
        
        func getPerformance() -> String {
            return "The album \(name) sold lots"
        }
    }
    
    class StudioAlbum: Album {                          // Inherit Album
        var studio: String
        
        init(name: String, studio: String) {
            self.studio = studio
            super.init(name: name)
        }
        
        override func getPerformance() -> String {
            return "The studio album \(name) sold lots"
        }
    }
    
    class LiveAlbum: Album {                        // Any instance of LiveAlbum is inherited from Album. So can be treated as Album or LiveAlbum, or both at same time = Polymorphism
        var location: String
        
        init(name: String, location: String) {
            self.location = location
            super.init(name: name)
        }
        
        override func getPerformance() -> String {
            return "The live album \(name) sold lots"
        }
    }
    
    var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
    var fearless = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")
    var iTunesLive = LiveAlbum(name: "iTunes Live from SoHo", location: "New York")
    
    var allAlbums: [Album] = [taylorSwift, fearless, iTunesLive]
    
    for album in allAlbums { // Array holds type Album, but we know it holds one of subclasses: StudioAlbum or LiveAlbum, Swift doesn't know that. So we do it better below.
        print(album.getPerformance())                       // Auto override version of getPerformance depending on subclass in action, an object can work as its class and its parent classes at the same time
    }
    // Converting types with Typecasting
    for album in allAlbums {
        let studioAlbum = album as? StudioAlbum // as? = I think this conversion might be true, but it might fail
    }
    
    // Automatically unwrap the optional result like this:
    for album in allAlbums {
        print(album.getPerformance())
        
        if let studioAlbum = album as? StudioAlbum {
            print(studioAlbum.studio)
        } else if let liveAlbum = album as? LiveAlbum {
            print(liveAlbum.location)
        }
    }

    // Forced Downcasting - When your're really sure an object of one type can be treated like a diffrent type, if wrong then crash.
    // Doesn't need to return optional value becasue saying the conversion is going to work, if wrong then you wrote code wrong.

    var taylorSwiftAlbum = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
    var fearlessAlbum = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")
    
    var allAlbumsAgain: [Album] = [taylorSwift, fearless]
    
    for album in allAlbums as! [StudioAlbum] {              // as! = I know this conversion is true, and I'm happy for my app to crash if I'm wrong
        print(album.studio)
    }
    
    // Converting common types with initializers
    let number = 5
    let text = String(number)
    print(text)

//                                                                              Closures
// A variable that holds code. They are Data Types, you can pass a closure as a parameter or store it as property


let vw = UIView()

    UIView.animate(withDuration: 0.5) { // duration and closure containing the code to be executed as part of the animatioon
        vw.alpha = 0 //closure to adjust the view's alpha (opacity) to 0, which means completely transparent
    }

// Trailing closure syntax
let submitAction = UIAlertAction(title: "Submit", style: .default) { [unowned self, ac] (action: UIAlertAction) in // Anytime method expects closure as its final parameter, can eliminate that final parameter and pass it inside braces instead
        let answer = ac.textFields![0]
        self.submit(answer: answer.text!)
    }

 

//                                                                  Tuples
let http404Error = (404, "Not Found") // Of type (Int, String)
let (statusCode, statusMessage) = http404Error
print("My \(statusCode) and \(statusMessage)")


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
    
//                                                                      JSON
    
    let urlString = "http://localhost:3000/posts/"
    let url = URL(string: urlString)
    
    let decoder = JSONDecoder()
    struct Post: Codable {
        let id: Int
        let author: String
        let title: String
    }
    
    var posts: [Post] = []
    var errorMessage = " "
    
    


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


    if let currentArtist = favoriteArtist, let currentAlbum = favoriteAlbum, let currentSong = favoriteSong {
    print("Now we have overselves a party")
    print(currentSong)
    print(currentArtist)
    print(currentAlbum)
}

    if let currentSong = favoriteSong, let hasValue = nilValue {
    print("This will not work if even one of them is nil!")
}



var favoriteRapper: String?
favoriteRapper = "Kanye West"

var bestSong: String?

bestSong = "Can't Tell Me Nothing"

var bestAlbum: String?

bestAlbum = "Graduation"


    if let bestRapper = favoriteArtist, let bestSongEver = bestSong, let bestAlbumEver = bestAlbum {
    print(bestRapper)
    print(bestSongEver)
    print(bestAlbumEver)
}







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


//                                                                                                     Ternary Conditional Operator
    //                                                                                                 3 Parts:
    //                                                                                                 Question with true or false answer
    //                                                                                                 A value if the answer to the question is true
    //                                                                                                 A value if the answer to the question is false
    
    var largest: Int
    let a = 15
    let b = 4

    largest = a > b ? a : b // “You can read it as: "If a > b, assign a to the largest constant; otherwise, assign b." In this case, a is greater than b, so it's assigned to largest.
    

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
}
