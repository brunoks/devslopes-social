
/*
var coe = [String]()
var dok: Array<Double> = [4.0,5.0,6.0]
var uio = ["Nome", "Data", "Ano", "husuas", "3"]

coe.append("Aviao")
coe.append("comida")
coe.append("lazer")
print(coe)

dok.append(5.1)
dok.append(7.8)
dok.append(3.8)
print(dok)

uio.append("Endereco")
uio.append("pais")
uio.append("numero")
print(uio)

coe.remove(at: 2)
print(coe)

dok.remove(at: 2)
print(dok)

uio.remove(at: 3)
print(uio)

coe.removeAll()
print(coe)
**/

var oddNumber = [Int]()

for i in 1...100 {
    if i % 2 != 0 {
    oddNumber.append(i)
    }
}
print(oddNumber)

var sums = [Int]()

for k in 0..<oddNumber.count {
    sums.append(oddNumber[k] + 5)
    
    print("A soma de \(oddNumber[k]) + 5 é: \(sums[k])")
}




