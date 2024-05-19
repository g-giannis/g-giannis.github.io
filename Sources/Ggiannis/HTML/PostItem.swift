//
//  PostItem.swift
//  
//
//  Created by Ioannis Giannopoulos on 04.04.23.
//

import Plot
import Publish

struct PostItem: Component {
    let item: Item<Ggiannis>
    var site: Ggiannis

    var body: Component {
        Div {
            Div {
                H1(Link(item.title, url: item.path.absoluteString))

                Node.picture(
                    .source(.srcset(item.metadata.darkIcon), .media("(prefers-color-scheme:dark)")),
                    Image(url: item.metadata.lightIcon, description: item.metadata.displayText)
                        .style("height: 24px; margin: 0px 0px 0px 10px;")
                        .attribute(named: "title", value: item.metadata.displayText)
                        .convertToNode()
                )
            }.class("item-header")

            Div {
                Paragraph(Link(item.description, url: item.path.absoluteString))
                Text("").addLineBreak()
                ItemTagList(tags: item.tags, site: site)
            }.class("item-content")
        }.class("item-container")
    }
}
