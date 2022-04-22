//
//  File.swift
//  
//
//  Created by Ioannis Giannopoulos on 21.04.22.
//

import Foundation
import Plot
import Files
import Publish

private extension Node where Context == HTML.DocumentContext {
    static func metaTheme() -> Node<HTML.HeadContext> {
        return .meta(.name("theme-color"), .content("#e3f1e8ff"))
    }
}

extension Node where Context == HTML.DocumentContext {
    static func customHead<T: Website>(for index: Publish.Location, on site: T,
                                       stylesheetPaths: [Path] = ["/styles.css"]) -> Node {
        .group(
            .head(for: index, on: site, stylesheetPaths: stylesheetPaths),
            .metaTheme().convertToNode()
        )
    }
}

