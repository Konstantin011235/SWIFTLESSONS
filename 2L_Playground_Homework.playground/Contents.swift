import UIKit
//Задание номер 1

func chetnost (_ number:Int){
    if (number % 2 == 0) {
        print ("Число четное")
    }else{
        print ("Число нечетное")
    }
 }

chetnost(100)

//Задание номер 2

func ostatok (_ number:Int){
    if (number % 3 == 0) {
        print ("Число делится на 3 без остатка")
    }else{
        print ("Число не делится на 3 без остатка")
    }
 }

ostatok(9)

//Задание номер 3

var array: [Int] = []
var i:Int = 0

while i < 100 {
    i = i+1
    array.append(i)
    
}
print("Массив \(array)")

//Задание номер 4
for (_, value) in array.enumerated() {
    if (value % 2) == 0 && (value % 3) != 0 {
        array.remove(at: array.firstIndex(of: value)!)
    }
}
print ("Измененный массив \(array)")


//задание номер 5 - много серфил и смотрел разные примеры, но альтернативный варинат чем код который разобран на уроке, не смог написать. Единственное, убрал часть, потому что итог не менятеся от того, что мы не сравниваем с 2

func fib(_ count: Int) -> [Double] {
    var newarray: [Double] = []
    if count == 1 {
        let f0: Double = 0
        newarray.append(f0)
    } else {
        let f1: Double = 1
        let f0: Double = 0
        newarray.append(f0)
        newarray.append(f1)
        var n = 2
        while n < count + 2 {
            let n1 = (newarray[n-1]) + (newarray[n-2])
            newarray.append(n1)
            n+=1
            
        }
    }
    return newarray
}
print(fib(2))
print(fib(100))

//Задание номер 6 - не понимаю что не работает, за не имением варинтов попытался сделать как у Вас в примере, несколько раз переписывал по своему, но вывод значений был некорректный. Теперь ругается на of, подскажите пжл что не так?
func chetnost(_ n:Int) -> Bool {
    return n % 2 == 0
}

var array3: [Int] = []

while array3.count != 100 {
    array3.append(array3.count + 2)
}

var p1: Int
var index = 0

while index < array3.count - 1 {
    p1 = array3[index]
    print("Новый делитель")
    
    print("массив: \(array3)")
    for n in array3 {
        print("0 Знач: \(n)")
        print("1 Делитель: \(p1)")
        if (n != p1) && chetnost(n, of: p1){
            array3.remove(at: array3.firstIndex(of: n)!)
            print("3 array3 : \(array3)")
        }
    }
    index += 1
}
print(array3)





