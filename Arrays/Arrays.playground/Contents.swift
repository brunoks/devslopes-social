
var employeeSalarys: [Double] = [4500.0, 5000.0, 3000.0, 2500.0]

//Ou - Tipos de sintaxe
//Declarçao explicita do tipo array
var employeeSalaris: Array<Double> = [4500.0, 5000.0, 3000.0, 2500.0]

//Serve para contarr quantos valores tem no array
print(employeeSalarys.count)

employeeSalarys.append(54000.0)

print(employeeSalarys.count)

//Remover um valor do array
employeeSalarys.remove(at: 1)

print(employeeSalarys.count)

var students = [String]()

print(students.count)

students.append("Jon")
students.append("Luisa")
students.append("Bruno")

students.remove(at: 0)

print(students.count)


