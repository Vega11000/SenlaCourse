import Foundation


public class ImportSubstitutionFactory {
    
    public init() {}
    
    public static var productionCount = 0
    
    public func conveyor(_ model: Conveyour) -> Automobile {
        ImportSubstitutionFactory.productionCount += 1
        
        switch model {
        case .priora:
            return Priora(ImportSubstitutionFactory.productionCount, model.rawValue)
        case .kalina:
            return Kalina(ImportSubstitutionFactory.productionCount, model.rawValue)
        case .volga:
            return Volga(ImportSubstitutionFactory.productionCount, model.rawValue)
        }
    }
    
    public enum Conveyour: String {
        case priora = "PrioraConveyour"
        case kalina = "KalinaConveyour"
        case volga = "VolgaConveyour"
    }
    
}

public class Automobile {
    
    private let serialNumber: Int
    private let manufacturer: String
    private var engine = Engine()
    
    public init(_ serialNumber: Int, _ manufacturer: String) {
        self.serialNumber = serialNumber
        self.manufacturer = manufacturer
    }
    
    public var getInfo: String {
        return "Serial number: \(serialNumber).\nEgine: \(engine.name)\nManufacturer: \(manufacturer)\n"
    }
    
    public var getEngineInfo: String {
        return "Engine: \(engine.name).\nNumber of cylinders: \(engine.numberOfCylinders).\nEco level: \(engine.ecoLevel).\nCapacity: \(engine.capacity)\n"
    }
        
    public func changeEngine(to name: String) {
        self.engine.name = name
    }
    
    public func upgradeEngine(numberOfCylinders: Int, ecoLevel: Int, capacity: Int) {
        self.engine.numberOfCylinders = numberOfCylinders
        self.engine.ecoLevel = ecoLevel
        self.engine.capacity = capacity
    }
    
    public struct Engine {
        var name = "Default"
        var numberOfCylinders = 2
        var ecoLevel = -2
        var capacity = 3
    }
    
}

public class Priora: Automobile {
    
    public func fallOfWheels() {
        print("Trip is Over\n")
    }
}

public class Kalina: Automobile {
    
    public func deadEngine() {
        changeEngine(to: "Rubbish (more than before)")
        upgradeEngine(numberOfCylinders: 0, ecoLevel: -10, capacity: 0)
        print("Trip is Over\n")
    }
}

public class Volga: Automobile {
    
    public func fallApart() {
        changeEngine(to: "Rubbish (more than before)")
        upgradeEngine(numberOfCylinders: 0, ecoLevel: -10, capacity: 0)
        print("Trip is Over. Forever.\n")
    }
}
