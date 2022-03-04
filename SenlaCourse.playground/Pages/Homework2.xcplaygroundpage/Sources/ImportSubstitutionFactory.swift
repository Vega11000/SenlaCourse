import Foundation


public class ImportSubstitutionFactory {
    
    public init() {}
    
    static var productionCount = 0
    
    public static func getProductionCount() -> Int {
        return productionCount
    }
    
    public func conveyor() -> Automobile {
        ImportSubstitutionFactory.productionCount += 1
        return Automobile(ImportSubstitutionFactory.productionCount, "MainFactory")
    }
    
}

public class PrioraConveyor: ImportSubstitutionFactory {
    
    public override func conveyor() -> Priora {
        ImportSubstitutionFactory.productionCount += 1
        return Priora(ImportSubstitutionFactory.productionCount, "PrioraConveyour")
    }
}

public class KalinaConveyor: ImportSubstitutionFactory {
    
    public override func conveyor() -> Kalina {
        ImportSubstitutionFactory.productionCount += 1
        return Kalina(ImportSubstitutionFactory.productionCount, "KalinaConveyour")
    }
}

public class VolgaConveyor: ImportSubstitutionFactory {

    public override func conveyor() -> Volga {
        ImportSubstitutionFactory.productionCount += 1
        return Volga(ImportSubstitutionFactory.productionCount, "VolgaConveyour")
    }
}

public class Automobile {
    
    private let serialNumber: Int
    private let manufacturer: String
    private var engine: String = "default"
    
    public init(_ serialNumber: Int, _ manufacturer: String) {
        self.serialNumber = serialNumber
        self.manufacturer = manufacturer
    }
    
    public var getInfo: [String : String] {
        return ["SerialNumber" : String(serialNumber), "Engine" : engine, "Manufacturer" : manufacturer]
    }
    
    public func changeEngine(new engine: String) {
        self.engine = engine
    }
    
}

public class Priora: Automobile {
    
    public func fallOfWheels() {
        print("Trip is Over")
    }
}

public class Kalina: Automobile {
    
    public func deadEngine() {
        print("Trip is Over")
    }
}

public class Volga: Automobile {
    
    public func fallApart() {
        print("Trip is Over. Forever.")
    }
}
