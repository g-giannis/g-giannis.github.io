//
//  Articles.swift
//  
//
//  Created by Ioannis Giannopoulos on 21.04.22.
//

import Foundation
import Plot
import Publish

struct ItemList<Site: Website>: Component {
    var items: [Item<Site>]
    var site: Site

    var body: Component {
        List(items) { item in
            Article {
                H1(Link(item.title, url: item.path.absoluteString))
                Paragraph(item.description)
                Text("").addLineBreak()
                ItemTagList(item: item, site: site)
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
