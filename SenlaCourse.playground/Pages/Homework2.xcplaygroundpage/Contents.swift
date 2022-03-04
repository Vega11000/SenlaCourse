import Foundation


example(of: "Import Substitution Automobile Factory") {
    let rubbish1 = PrioraConveyor().conveyor()
    print(rubbish1.getInfo)
    rubbish1.fallOfWheels()
    print()
    
    let rubbish2 = KalinaConveyor().conveyor()
    rubbish2.changeEngine(new: "tin")
    print(rubbish2.getInfo)
    rubbish2.deadEngine()
    print()
    
    let rubbish3 = VolgaConveyor().conveyor()
    print(rubbish3.getInfo)
    rubbish3.fallApart()
    print()
    
    print("All production count is \(ImportSubstitutionFactory.getProductionCount())")
}
