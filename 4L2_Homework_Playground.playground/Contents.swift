import UIKit


class Cars {
    enum Engine: CustomStringConvertible {
        case on, off
        
        var description: String {
            switch self {
            case .on:
                return "Двигатель заведен"
            case .off:
                return "Двигатель заглушен"
            }
        }
    }
    
    enum Windows: CustomStringConvertible {
        case open, close
        
        var description: String {
            switch self  {
            case .open:
                return "Окна открыты"
            case .close:
                return "Окна закрыты"
            }
        }
    }

    enum TruckType: CustomStringConvertible {
        case box, tank, refrigirator
        
        var description: String {
            switch self {
            case .box:
                return "Стандартный кузов"
            case .tank:
                return "Цисцерна"
            case .refrigirator:
                return "Морозильная камера"
            }
        }
    }

    enum Fuel: CustomStringConvertible {
        case empty, middle, full
        
        var description: String {
            switch self {
            case .empty:
                return "Бак почти пустой"
            case .middle:
                return "Среднее количество топлива"
            case .full:
                return "Полный бак"
            }
        }
    }

    enum Action {
        case switchEngine(Engine)
        case switchWindows(Windows)
        case loadCargo(Double)
        case attachTruck(TruckType)
        case ByeFuel(Fuel)
    
        
    }
    let brand: String
    let year: Int
    var stEngine: Engine = .off
    var stWindows: Windows = .close
    var stFuel: Fuel = .empty
  
    init(brand: String, year: Int) {
        self.brand = brand
        self.year = year
    }
    func perform(action: Action) {
    }
}

class TrunkCar: Cars, CustomStringConvertible {
    let maxCargoSpace: Double
    var currentCargoSpace: Double = 0
    var body: TruckType?
    
    
    var description: String {
        let bodyDescription = body?.description ?? "Отцеплен"
        
        return "\(brand)\nГод выпуска: \(year)\nКузов: \(bodyDescription) \(currentCargoSpace)/(maxCargoSpace)\nСостояние: \(stEngine) | \(stWindows)\nТопливо: \(stFuel) "
    }
    
    init(brand: String, year:Int, maxCargoSpace:Double, body:TruckType?) {
        self.body = body
        self.maxCargoSpace = maxCargoSpace
        super.init(brand: brand, year: year)
    }
    
    override func perform(action: Action) {
        switch action {
        case .switchEngine(let status):
            stEngine = status
        case .switchWindows(let status):
            stWindows = status
        case .loadCargo(let load):
            guard body != nil else {
                return
            }
            let expectedLoad = load + currentCargoSpace
            switch expectedLoad {
            case _ where expectedLoad > maxCargoSpace:
                currentCargoSpace = maxCargoSpace
            case _ where expectedLoad < 0:
                currentCargoSpace = 0
            default:
                currentCargoSpace += load
                
            }
      
        case .attachTruck(let newBody):
            self.body = newBody
            currentCargoSpace = 0
        default:
            break
        }
        
        
        }
}

class sportCar: Cars, CustomStringConvertible {
let maxCargoSpace: Double
var currentCargoSpace: Double = 0
var body: TruckType?
    var FuelStatus: String


var description: String {
    let bodyDescription = body?.description ?? "Отцеплен"
    
    return "\(brand)\nГод выпуска: \(year)\nКузов: \(bodyDescription) \(currentCargoSpace)/(maxCargoSpace)\nСостояние: \(stEngine) | \(stWindows)\nТопливо: \(stFuel) "
}

    init(brand: String, year:Int, maxCargoSpace:Double, body:TruckType?, FuelStatus: String) {
    self.body = body
    self.maxCargoSpace = maxCargoSpace
        super.init(brand: brand, year: year)
        self.FuelStatus = FuelStatus
}

override func perform(action: Action) {
    switch action {
    case .switchEngine(let status):
        stEngine = status
    case .switchWindows(let status):
        stWindows = status
    case .ByeFuel:
        print ("бак заправлен")
    default:
        break
    }
}
}


var manTruck = TrunkCar(brand: "kamaz", year: 1985, maxCargoSpace : 2000, body : nil)
manTruck.perform(action: .attachTruck(.tank))
manTruck.perform(action: .loadCargo(1500))
manTruck.perform(action: .switchEngine(.on))
print(manTruck)

    var sportTruck = TrunkCar(brand: "camaro", year: 1969, maxCargoSpace : 0, body : nil, FuelStatus: "Бак пустой")
    sportTruck.perform(action: .attachTruck(.tank))
    sportTruck.perform(action: .ByeFuel)
    print(sportTruck)



    


