import Foundation

example(of: "1.SqareRoots") {
    print(findRoots(2, 8, 2))
    print(findRoots(2, 4, 2))
    print(findRoots(16, 8, 2))
}

example(of: "2.CubicEquation") {
    print(solveCubicEquation(1, 6, 1, 1))
}

example(of: "3.Fibonacci") {
    var array = [1, 2]
    array.appendFibonacci(8)
    print(array)
}

example(of: "4.EratosthenesMethod") {
    var array = (2...100).map { $0 }

    array.sieveOfEratosthenes()
    print(array)
}
