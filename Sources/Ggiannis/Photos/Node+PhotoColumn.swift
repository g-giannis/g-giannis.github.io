//
//  Node+PhotoColumn.swift
//  
//
//  Created by Ioannis Giannopoulos on 21.04.22.
//

import Foundation
import Plot
import Files
import Publish

extension Node where Context == HTML.BodyContext {
    static func photoColumn<Site>(for row: Int, items: [File], context: PublishingContext<Site>) -> Node {
        .if(items.count > 0,
            .forEach(items, { file in

            Node.group(
                Div {
                    Node.a(
                        Image("/Images/photos/\(file.name)")
                            .attribute(named: "loading", value: "lazy")
                            .attribute(named: "alt", value: "")
                            .style("width:100%")
                            .convertToNode(),

                            .attribute(.href("#\(file.name)"))
                    )

                }.class("item")
                    .convertToNode()
            )
        }),
            else: nil)
    }

    static func lightboxes<Site>(for row: Int, items: [File], context: PublishingContext<Site>) -> Node {
        .if(items.count > 0,
            .forEach(items, { file in
                Div {
                    Node.a(
                        Text("&times;").convertToNode(),

                            .attribute(.href("#")), .class("close")
                    )

                    Node.img(.src("/Images/photos/\(file.name)"))
                }.class("lightbox")
                    .id("\(file.name)").convertToNode()
            }),
            else: nil)
    }
}
