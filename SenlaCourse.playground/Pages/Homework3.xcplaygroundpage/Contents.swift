import Foundation


example(of: "Import Substitution Automobile Factory") {
    let factory = ImportSubstitutionFactory()
    let dealer = Dealer()
    factory.dealer = dealer
    
    factory.conveyor(.priora)
    factory.conveyor(.kalina)
    factory.conveyor(.volga)
    
    if var rubbish1 = factory.dealer?.shipToUnfortunate(.priora) as? Priora {
        print(rubbish1.getInfo)
        rubbish1.fallOfWheels()
        print(rubbish1.underestimated)
        print(rubbish1.getEngineInfo)
    }
    
    if var rubbish2 = factory.dealer?.shipToUnfortunate(.kalina) as? Kalina {
        rubbish2.changeEngine(to: "tin")
        print(rubbish2.getInfo)
        rubbish2.upgradeEngine(numberOfCylinders: 10, ecoLevel: -100, capacity: 10)
        print(rubbish2.getEngineInfo)
        rubbish2.deadEngine()
        print(rubbish2.getEngineInfo)
        rubbish2.tuning()
    }
    
    if var rubbish3 = factory.dealer?.shipToUnfortunate(.volga) as? Volga {
        print(rubbish3.getInfo)
        print(rubbish3.forgottenGrandfathersCorpse)
        rubbish3.throwOutCorpse()
        print(rubbish3.forgottenGrandfathersCorpse)
        rubbish3.fallApart()
        
    }
    
    print("All production count is \(ImportSubstitutionFactory.productionCount)")
}
