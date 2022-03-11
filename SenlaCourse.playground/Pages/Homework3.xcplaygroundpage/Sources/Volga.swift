import Foundation


protocol VolgaProtocol: AutomobileInfo, AutomobileDetails {
    
    var forgottenGrandfathersCorpse: Bool { get set }
    
    mutating func throwOutCorpse()
    mutating func fallApart()
}

public struct Volga: VolgaProtocol {
    
    public var forgottenGrandfathersCorpse = true
    
    public var serialNumber: Int
    public var manufacturer = "VolgaConveyour"
    
    public var wheels = 4
    public var steeringWheel = true
    public var engine = Engine()
    
    public mutating func throwOutCorpse() {
        forgottenGrandfathersCorpse = false
    }
    
    public mutating func fallApart() {
        changeEngine(to: "Rubbish (more than before)")
        upgradeEngine(numberOfCylinders: 0, ecoLevel: -10, capacity: 0)
        print("Trip is Over. Forever.\n")
    }
}
