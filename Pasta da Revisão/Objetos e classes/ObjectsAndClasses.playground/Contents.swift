class vehicle {
    var tires = 4
    var headlights = 2
    var horsePower = 468
    var model = ""
    
    
    func drive() {
    // acceletare the vehicle
    }
    
    func brake() {
    
    }
}

let bmw = vehicle()
bmw.model = "328i"

let ford = vehicle()
ford.model = "F1000"
ford.brake()


func passByReference(vehicle: vehicle) {
    vehicle.model = "Cheese"
}

print(ford.model)

passByReference(vehicle: ford)

print(ford.model)

