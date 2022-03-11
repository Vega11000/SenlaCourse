import Foundation


protocol PrioraProtocol: AutomobileInfo, AutomobileDetails {
    
    var underestimated: String { get set }
    
    mutating func fallOfWheels()
}

public struct Priora: PrioraProtocol {
    
    public var underestimated: String = "Just Understimaed"
    
    public var serialNumber: Int
    public var manufacturer = "PrioraConveyour"
    
    public var wheels = 4
    public var steeringWheel = true
    public var engine = Engine()
    
    public mutating func fallOfWheels() {
        wheels = 0
        underestimated = "Trully Underestimated"
    }
    
}
