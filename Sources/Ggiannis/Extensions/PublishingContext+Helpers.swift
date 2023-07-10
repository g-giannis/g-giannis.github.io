//
//  PublishingContext+Helpers.swift
//  
//
//  Created by Ioannis Giannopoulos on 07.04.23.
//

import Publish

extension PublishingContext<Ggiannis> {
    var mostRecentFiveItems: [Item<Ggiannis>] {
        let items = sections.flatMap { $0.items }
        return sort(items, sortedBy: \.date, order: .descending, prefix: 5)
    }
}

extension PublishingContext<Ggiannis> {
    func sort<T: Comparable>(
        _ items: [Item<Ggiannis>],
        sortedBy sortingKeyPath: KeyPath<Item<Site>, T>,
        order: Publish.SortOrder = .ascending,
        prefix maxLength: Int? = nil
    ) -> [Item<Site>] {

        if let maxLength {
            return items.sorted(
                by: order.sorter(forKeyPath: sortingKeyPath)
            ).prefix(maxLength).compactMap({ $0 })
        }

        return items.sorted(
            by: order.sorter(forKeyPath: sortingKeyPath)
        )
    }
}

private extension Publish.SortOrder {
    func sorter<T, V: Comparable>(
        forKeyPath keyPath: KeyPath<T, V>
    ) -> (T, T) -> Bool {
        switch self {
        case .ascending:
            return {
                $0[keyPath: keyPath] < $1[keyPath: keyPath]
            }
        case .descending:
            return {
                $0[keyPath: keyPath] > $1[keyPath: keyPath]
            }
        }
    }
}
