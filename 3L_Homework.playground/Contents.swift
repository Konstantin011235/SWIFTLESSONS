import UIKit
//Задание номер 1 и 2 - опистаь несколько структур с маркой авто, годом выпуска и тд
enum cars {
    case sedan, gruzovik
}
enum mark {
    case honda, ford, mercedes
}
enum windows {
    case open, close
}
enum engine {
    case on, off
}

struct car {
    let typeofcar: cars
    let markofcar : mark
    var year: Double
    var trunkVempty: Double
    var trunkVfull: Double
    var windowsofcar: windows
    var engineofcar: engine

    
        
    

    //Задание 3 и 4 - делаем методы и внутри создаем описание действий
mutating func engineON() {
    self.engineofcar = .on
    print("Двигатель включен")
}
mutating func engineOFF() {
        self.engineofcar = .off
    print("Двигатель выключен")
    }
    mutating func windowsOpen(){
        self.windowsofcar = .open
        print("Окна открыты")
    }
    mutating func windowsClose (){
        self.windowsofcar = .close
        print("окна закрыты")
    }
}
//Задание 5 и 6 - применяем действия к различным экземплярам структур. Сначала окна открыты, двигатель включен, после выполнения методов, значения меняются на противоположные
var car1 = car(typeofcar: .sedan, markofcar: .honda, year: 2002, trunkVempty: 30, trunkVfull: 0.5, windowsofcar: .open, engineofcar: .on)
car1.engineOFF()
car1.windowsClose()
print(car1)

var car2 = car(typeofcar: .gruzovik, markofcar: .mercedes, year: 1988, trunkVempty: 3000, trunkVfull: 50, windowsofcar: .close, engineofcar: .off)
car2.engineON()
car2.windowsOpen()
print(car2)



