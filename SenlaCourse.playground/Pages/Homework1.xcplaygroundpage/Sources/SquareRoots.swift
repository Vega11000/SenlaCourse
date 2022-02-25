import Foundation

public func findRoots(_ a: Float, _ b: Float, _ c: Float) -> [Float] {
    let discr = pow(b, 2) - 4 * a * c
    
    if discr > 0 {
        print("Two roots:")
        return [-b + sqrt(discr) / (2 * a), -b - sqrt(discr) / (2 * a)]
    }
    
    if discr == 0 {
        print("One root:")
        return [-b / (2 * a)]
    }
    
    print("No roots:")
    return []
}
