import Foundation

extension Array where Element: AdditiveArithmetic {
    public mutating func appendFibonacci(_ n: Int) {
        guard self.count >= 2 else { return }
        
        for _ in 0..<n {
            self.append(self.last! + self[self.count - 2])
        }
    }
}
