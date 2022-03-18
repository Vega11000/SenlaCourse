import Foundation


public protocol AutomobileInfo {
    
    var serialNumber: Int { get set }
    var manufacturer: String { get set }
    
    var getInfo: String { get }
}

public protocol AutomobileDetails {
    
    var wheels: Int { get set }
    var steeringWheel: Bool { get set }
    var engine: Engine { get set }
    var getEngineInfo: String { get }
    
    mutating func changeEngine(to name: String)
    mutating func upgradeEngine(numberOfCylinders: Int, ecoLevel: Int, capacity: Int)
    mutating func fellOfSteeringWheel()
}

public protocol Automobile: AutomobileInfo, AutomobileDetails {
    
    func bipBip()
}

extension Automobile {
    
    public func bipBip() {
        print("Bip/nBip")
    }
}
extension AutomobileInfo {
    
    public var getInfo: String {
        return "Serial number: \(serialNumber).\nManufacturer: \(manufacturer)\n"
    }
}

extension AutomobileDetails { // Static(Direct) Dispatch
    
    public var getEngineInfo: String {
        return "Engine: \(engine.name).\nNumber of cylinders: \(engine.numberOfCylinders).\nEco level: \(engine.ecoLevel).\nCapacity: \(engine.capacity)\n"
    }
    
    public mutating func changeEngine(to name: String) {
        engine.name = name
    }
    
    public mutating func upgradeEngine(numberOfCylinders: Int, ecoLevel: Int, capacity: Int) {
        engine.numberOfCylinders = numberOfCylinders
        engine.ecoLevel = ecoLevel
        engine.capacity = capacity
    }
    
    public mutating func fellOfSteeringWheel() {
        steeringWheel = false
    }
}

public struct Engine {
    public var name = "Default"
    public var numberOfCylinders = 2
    public var ecoLevel = -2
    public var capacity = 3
}
