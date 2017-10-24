

class Shape {
    var area: Double?
    
    
    func CalculateArea(valA: Double, valB: Double) {
    
    }
}

class Triangulo: Shape {

    override func CalculateArea(valA: Double, valB: Double) {
        area = (valA * valB) / 2
    }
}

class Rectangler: Shape {
    
    override func CalculateArea(valA: Double, valB: Double) {
        area = valA * valB
    }
}

