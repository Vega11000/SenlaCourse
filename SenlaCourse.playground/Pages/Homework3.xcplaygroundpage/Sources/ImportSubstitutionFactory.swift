import Foundation


protocol Factory {
    
    func conveyor(_ model: Conveyor)
}

public class ImportSubstitutionFactory: Factory { // Witness Table Dispatch
    
    public var dealer: DealerDelegate?
    public static var productionCount = 0
    
    public init() {}
    
    public func conveyor(_ model: Conveyor) {
        ImportSubstitutionFactory.productionCount += 1
        
        var automobile: AutomobileInfo
        
        switch model {
        case .priora:
            automobile = Priora(serialNumber: ImportSubstitutionFactory.productionCount)
        case .kalina:
            automobile = Kalina(serialNumber: ImportSubstitutionFactory.productionCount)
        case .volga:
            automobile = Volga(serialNumber: ImportSubstitutionFactory.productionCount)
        }
        
        dealer?.getFromFactory(model, automobile)
    }
    
    
}

public enum Conveyor: String {
    case priora
    case kalina
    case volga
}
