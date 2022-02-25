import Foundation

import Foundation

public func solveCubicEquation(_ a: Double, _ b: Double, _ c: Double, _ d: Double) -> [Double] {
    // Case for handling Liner Equation
    if a == 0 &&  b == 0 {
        return [-d * 1.0 / c]
    }
    
    // Case for handling Quadratic Equations
    if a == 0 {
        var discr = c * c - 4.0 * b * d
        
        if discr >= 0 {
            discr = sqrt(discr)
            
            return [(-c + discr) / (2.0 * b), (-c - discr) / (2.0 * b)] // Returning Quadratic Roots
        }
        
        print("No roots")
        return []
    }
    
    // Helper constants
    let f = ((3.0 * c / a) - ((pow(b, 3)) / pow(a, 3.0))) / 3.0
    let g = (((2.0 * (pow(b, 3.0))) / (pow(a, 3.0))) - ((9.0 * b * c) / (pow(a, 3))) + (27.0 * d / a)) / 27.0
    let h = ((pow(g, 2)) / 4.0 + (pow(f, 3)) / 27.0)
    
    // All 3 Roots are Real and Equal
    if f == 0 && g == 0 && h == 0 {
        let x: Double
        
        if (d / a) >= 0 {
            x = pow(d / (1.0 * a), (1 / 3.0)) * -1
        } else {
            x = pow(-d / (1.0 * a), (1 / 3.0))
        }
        
        return [x, x, x] // Returning Equal Roots
    }
    
    if h <= 0 {
        // Helper constants
        let i = sqrt(((pow(g, 2.0)) / 4.0) - h)
        let j = pow(i, (1 / 3.0))
        let k = acos(-(g / (2 * i)))
        let l = j * -1
        let m = cos(k / 3.0)
        let n = sqrt(3) * sin(k / 3.0)
        let p = (b / (3.0 * a)) * -1
        
        return [2 * j * cos(k / 3.0) - (b / (3.0 * a)), l * (m + n) + p, l * (m - n) + p] // Returning Real Roots
    }
    
    // One Real Root and two Complex Roots (but without complex roots - Not included in the deal)
    if h > 0 {
        // Helper constants
        let r = -(g / 2.0) + sqrt(h)
        let s: Double
        
        if r >= 0 {
            s = pow(r, 1 / 3.0)
        } else {
            s = pow(-r, 1 / 3.0) * -1
        }
        
        let t = -(g / 2.0) - sqrt(h)
        let u: Double
        
        if t >= 0 {
            u = pow(t, 1 / 3.0)
        } else {
            u = pow(-t, 1 / 3.0) * -1
        }
        
        return [(s + u) - (b / (3.0 * a))] // Returning One Real Root (Remember, Two Complex Roots aren't included in the deal)
    }
    
    print("No roots")
    return []
}
