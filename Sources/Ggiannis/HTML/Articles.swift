//
//  Articles.swift
//  
//
//  Created by Ioannis Giannopoulos on 21.04.22.
//

import Foundation
import Plot
import Publish

struct ItemList: Component {
    var items: [Item<Ggiannis>]
    var site: Ggiannis

    var body: Component {
        List(items) { item in
            Div {
                PostItem(item: item, site: site)
            }
        }
        .class("item-list")
    }
}

struct ItemTagList<Site: Website>: Component {
    var item: Item<Site>
    var site: Site

    var body: Component {
        List(item.tags) { tag in
            Link(tag.string, url: site.path(for: tag).absoluteString)
        }
        .class("tag-list")
    }
}
