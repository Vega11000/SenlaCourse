import Foundation


example(of: "Import Substitution Automobile Factory") {
    let factory = ImportSubstitutionFactory()
    
    if let rubbish1 = factory.conveyor(.priora) as? Priora {
        print(rubbish1.getInfo)
        print(rubbish1.getEngineInfo)
        rubbish1.fallOfWheels()
    }
    
    if let rubbish2 = factory.conveyor(.kalina) as? Kalina {
        rubbish2.changeEngine(to: "tin")
        print(rubbish2.getInfo)
        rubbish2.upgradeEngine(numberOfCylinders: 10, ecoLevel: -100, capacity: 10)
        print(rubbish2.getEngineInfo)
        rubbish2.deadEngine()
        print(rubbish2.getEngineInfo)
    }
    
    if let rubbish3 = factory.conveyor(.volga) as? Volga {
        print(rubbish3.getInfo)
        rubbish3.fallApart()
    }
    
    print("All production count is \(ImportSubstitutionFactory.productionCount)")
}
