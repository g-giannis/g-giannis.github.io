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
                if let image = item.imagePath?.absoluteString {
                    Node.a(
                        Image(image)
                            .class("header-image").convertToNode(),
                        .href(item.path.absoluteString)
                    )
                    Node.picture(
                        .source(.srcset(item.metadata.darkIcon), .media("(prefers-color-scheme:dark)")),
                        Image(url: item.metadata.lightIcon, description: item.metadata.displayText)
                            .style("height: 24px;margin: 0px; 10px;")
                            .attribute(named: "title", value: item.metadata.displayText)
                            .convertToNode()
                    )
                }
            }.class("item-header")
                // Move this into the div below if you wanna have space on top between title and type.
                H1(Link(item.title, url: item.path.absoluteString))


            Div {
                Paragraph(Link(item.description, url: item.path.absoluteString))
                Text("").addLineBreak()
                ItemTagList(tags: item.tags, site: site)
            }.class("item-content")
        }.class("item-container")
    }
}
