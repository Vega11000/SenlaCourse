import Foundation

extension Array where Element: BinaryInteger {
    public mutating func sieveOfEratosthenes() {
        guard !self.isEmpty else { return }
        
        var p = self.first!
        let n = self.count
        
        while (p <= n) {
            self.removeAll(where: { ($0 == 2 + p) || ($0 > 2 + p && $0.isMultiple(of: p)) })
            p = self.first(where: { $0 > p }) ?? Element(n + 1)
        }
    }
}
