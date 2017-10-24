

class vehicle {
    var tires = 4
    var make: String?
    var model: String?
    var currentSpeed: Double = 0
    
    init() {
    }
    
    func drive (speedIncrease: Double) {
        currentSpeed += speedIncrease * 2
    }
    
    func brake() {
        
    }
    
}
//SubClasses
class Truck: vehicle {
    override init () {
        super.init()
    }
    
    override func drive(speedIncrease: Double) {
            currentSpeed += speedIncrease * 1
    }


}


class SportsCar: vehicle {
    override init () {
        super.init()
    
        make = "BMW"
        model = "3 series"
    }
    override func drive(speedIncrease: Double) {
            currentSpeed += speedIncrease * 3
    }
}

let car = vehicle()


var Mustag = SportsCar()

Mustag.model = "Eleanor"
Mustag.make = "FORD"

print("\(Mustag.model)  \(Mustag.make)")









