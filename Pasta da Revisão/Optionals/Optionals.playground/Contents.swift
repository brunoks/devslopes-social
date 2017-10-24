
// "?" Cria uma variável sem definir valor
var lotteryWinnings: Int?


// Toda vez que utilizar esta nomeclartura:var lotteryWinnings: Int?
// Utilize um dos códicos abaixo para ferificar se ela tem valor dentro

if lotteryWinnings != nil {
    print(lotteryWinnings!)
}

lotteryWinnings = 10

if let winnings = lotteryWinnings {
    print(winnings)
}

class Car {
    var model:String?
}

var vehicle: Car?

// Essa é uma opçao para tratamento de uma classe null
//if et v = vehicle {
//    if let m = v.model {
//    print(m)
//    }
//}

vehicle = Car()
vehicle?.model = "Fusca"


if let v = vehicle, let m = v.model {
    print(m)
}

var cars: [Car]?

cars = [Car]()

if let carArr = cars, carArr.count > 0 {
    // Apenas execute se não for nil e se a contagem for maior que 0
} else {
    cars?.append(Car())
    print(cars?.count as Any)
}

class Person {
    // ! Exclamaçao significa que eu estou garantindo que terá um valor ali
    // ? Interrogaçao significa que eu não garanto que terá um 
    // valor ali
     var _age:Int!

    var age: Int {
        if _age == nil {
            _age = 10
        }
        return _age!
    }
    func setAge(newAge: Int) {
        self._age = newAge
    }
}

var jack = Person()
// Isso da crash no programa
//print(jack.age)
print(jack._age as Any)
print(jack.age)
print(jack._age as Any)
jack.setAge(newAge: 20)


// Se eu declarar uma classe com construtor, eu não preciso
// colocar obrigatoriedade ou opicionalidade ! ou ?
// construtor => 
//init(someSpecies: String) {
//self.species = someSpecies
//}
class Dog {
    var species:String
    
    init(someSpecies: String) {
        self.species = someSpecies
    }
}

var lab = Dog(someSpecies: "Black Lab")
print(lab.species)
