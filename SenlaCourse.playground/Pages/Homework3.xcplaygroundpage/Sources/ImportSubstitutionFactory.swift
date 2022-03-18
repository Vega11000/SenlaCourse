import Foundation


public protocol Factory {
    
    func conveyor(_ model: CarType)
}

public class ImportSubstitutionFactory: Factory { // Witness Table Dispatch
    
    public var delegate: FactoryDelegate?
    public static var productionCount = 0
    
    public init() {}
    
    public func conveyor(_ model: CarType) {
        ImportSubstitutionFactory.productionCount += 1
        
        var automobile: Automobile
        
        switch model {
        case .priora:
            automobile = Priora(serialNumber: ImportSubstitutionFactory.productionCount)
        case .kalina:
            automobile = Kalina(serialNumber: ImportSubstitutionFactory.productionCount)
        case .volga:
            automobile = Volga(serialNumber: ImportSubstitutionFactory.productionCount)
        }
        
        delegate?.factoryDidCreated(automobile: automobile, of: model)
    }
}

public enum CarType: String {
    case priora
    case kalina
    case volga
}
