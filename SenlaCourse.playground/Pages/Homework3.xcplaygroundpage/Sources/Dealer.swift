import Foundation


public protocol DealerDelegate {
    
    func getFromFactory(_ model: Conveyor, _ automobile: AutomobileInfo)
    func shipToUnfortunate(_ model: Conveyor) -> AutomobileInfo?
}

public class Dealer: DealerDelegate { // // Witness Table Dispatch
    
    var prioraStorage: [PrioraProtocol] = []
    var kalinaStorage: [KalinaProtocol] = []
    var volgaStorage: [VolgaProtocol] = []
    
    public init() {}
    
    public func getFromFactory(_ model: Conveyor, _ automobile: AutomobileInfo) {
        switch model {
        case .priora:
            if let priora = automobile as? PrioraProtocol {
                prioraStorage.append(priora)
            }
        case .kalina:
            if let kalina = automobile as? KalinaProtocol {
                kalinaStorage.append(kalina)
            }
        case .volga:
            if let volga = automobile as? VolgaProtocol {
                volgaStorage.append(volga)
            }
        }
    }
    
    public func shipToUnfortunate(_ model: Conveyor) -> AutomobileInfo? {
        switch model {
        case .priora:
            if let priora = prioraStorage.popLast() {
                return priora
            }
        case .kalina:
            if let kalina = kalinaStorage.popLast() {
                return kalina
            }
        case .volga:
            if let volga = volgaStorage.popLast() {
                return volga
            }
        }
        
        return nil
    }
    
}
