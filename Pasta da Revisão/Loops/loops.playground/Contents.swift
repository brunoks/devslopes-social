
var employee1Salary = 45000.0
var employee2Salary = 50000.0
var employee3Salary = 45000.0
var employee4Salary = 35000.0

employee1Salary = employee1Salary + (employee1Salary * 0.10)
employee2Salary = employee2Salary + (employee2Salary * 0.10)
employee3Salary = employee3Salary + (employee3Salary * 0.10)

var salaries = [45000.0, 50000.0, 45000.0, 35000.0]

salaries[0] = salaries[0] + (salaries[0] * 0.10)

var x = 0
repeat {
    salaries[x] = salaries[x] + (salaries[x] * 0.10)
    x += 1
} while (x < salaries.count)


/*var cont = 0
for y in 1...5 {
    print(y)
    print("Index: \(y)")
}

for z in 1..<5 {
    print("Index: \(z)")

}
for i in 0..<salaries.count {
    salaries[i] = salaries[i] + (salaries[i] * 0.10)
}

for salary in salaries {
print("Salary: \(salary)")
}*/
 
 



