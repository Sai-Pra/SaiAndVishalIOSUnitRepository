import UIKit

/*
 Key Differences between Classes and Structures
 
 1. Classes are references type varaibles and structures are value types.
 
 2. Structures provide you with a default initializer for all variables. Classes do not. Classes REQUIRE you to create an initializer that will initialize ALL vairables.
 
 3. Classes support inheritance and you can create subclasses. Structures do not.
 
 
 
 
 */


class Pizza {
    var crust: String
    var toppings: String
    var cheese: String
    
    init (crust: String, toppings: String){
        self.crust = crust
        self.toppings = toppings
        self.cheese = "Mozzerella"
    }
    
    func printMe(){
        print("\(crust) pizza with \(toppings) and \(cheese) cheese")
    }
}

// Creates a subclass of Pizza that inheirts all variables and methods of the Pizza Class. You can overide methods by putting the word override in front of them

    //All subclass initializers must also call the superclass init method as well (at the end of init)
class PizzaSpecial: Pizza{
    var appetizer: String
    var pop: String
    
    init(crust: String, toppings: String, appetizer: String, pop: String){
        self.appetizer = appetizer
        self.pop = pop
        super.init(crust: crust, toppings: toppings)
    }
    
    override func printMe() {
        print("**Pizza Special Orderered**")
        super.printMe()
        print("Appetizer: \(appetizer) and Pop: \(pop)")
    }
}

var janisSpecial = PizzaSpecial(crust: "Deep Dish", toppings: "Pepperoni", appetizer: "Garlic Bread", pop: "Cherry Pepsi")

janisSpecial.printMe()

var vishalsPizza = Pizza(crust: "Deep Dish", toppings: "Pineapple")

//vishalsPizza.printMe()
//var saisPizza = vishalsPizza
//saisPizza.printMe()
//saisPizza.crust = "Thin Crust"
//saisPizza.printMe()
//vishalsPizza.printMe()

struct Pasta {
    var sauce: String
    var noodle: String
}

// structs can't inherit

//struct PastaSpecial: Pasta{
//
//}

var vishalsPasta = Pasta(sauce: "Alfredo", noodle: "Spaghetti")

var mishosPasta = vishalsPasta
mishosPasta.noodle = "Penne"

//print(vishalsPasta.noodle)
//print(mishosPasta.noodle)
