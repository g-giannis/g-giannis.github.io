//
//  File.swift
//  
//
//  Created by Ioannis Giannopoulos on 05.04.23.
//

import Plot
import Publish

struct ItemTagList<Site: Website>: Component {
    var tags: [Tag]
    var site: Site

    var body: Component {
        List(tags) { tag in
            ListItem {
                Div {
                    Link(tag.string, url: site.path(for: tag).absoluteString)
                }
            }.class("tag")
        }
        .class("tag-list")
    }
}
