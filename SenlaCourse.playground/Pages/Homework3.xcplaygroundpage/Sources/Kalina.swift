import Foundation


protocol KalinaProtocol: AutomobileInfo, AutomobileDetails {
    
    var ugliness: String { get set }
    
    mutating func tuning()
    mutating func deadEngine()
}

public struct Kalina: KalinaProtocol {
    
    public var ugliness = "Really Ugliness"

    public var serialNumber: Int
    public var manufacturer = "KalinaConveyour"
    
    public var wheels = 4
    public var steeringWheel = true
    public var engine = Engine()
    
    public mutating func tuning() {
        ugliness = "Still Ugliness"
        print("It's useless. No chances")
    }
    
    public mutating func deadEngine() {
        changeEngine(to: "Rubbish (more than before)")
        upgradeEngine(numberOfCylinders: 0, ecoLevel: -10, capacity: 0)
        print("Trip is Over\n")
    }
}
