//
//  Extensions.swift
//  SwiftUIWorkshop
//
//  Created by Serge Sinkevych on 6/3/25.
//

import Foundation

extension Sequence where Iterator.Element: Hashable {
    // print(array.unique()) // prints: [1, 2, 3]

    func unique() -> [Iterator.Element] {
        var seen: Set<Iterator.Element> = []
        return filter { seen.insert($0).inserted }
    }
}

extension Sequence {
    /// Prints:
    /// [
    ///     Antoine - Swift Developer,
    ///     Ralph - Head of Sales,
    ///     Niek - Frontend Developer,
    ///     Kristy - Head of Marketing
    /// ]
    
    func unique<T: Hashable>(by keyForValue: (Iterator.Element) throws -> T) rethrows -> [Iterator.Element] {
        var seen: Set<T> = []
        return try filter { try seen.insert(keyForValue($0)).inserted }
    }
}
