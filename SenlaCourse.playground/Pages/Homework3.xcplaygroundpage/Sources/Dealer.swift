import Foundation


public protocol FactoryDelegate: AnyObject {
    
    func factoryDidCreated(automobile: Automobile, of type: CarType)
}

public class Dealer: FactoryDelegate { // Witness Table Dispatch
    
    private var prioraStorage: [PrioraProtocol] = []
    private var kalinaStorage: [KalinaProtocol] = []
    private var volgaStorage: [VolgaProtocol] = []
    
    public init() {}
    
    public func factoryDidCreated(automobile: Automobile, of type: CarType) {
        switch type {
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
    
    public func shipToUnfortunate(_ model: CarType) -> Automobile? {
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
