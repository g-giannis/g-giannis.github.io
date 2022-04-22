//
//  File.swift
//  
//
//  Created by Ioannis Giannopoulos on 21.04.22.
//

import Foundation
import Plot
import Publish

extension Node where Context == HTML.BodyContext {
    static func customPage<Site>(for page: Page, context: PublishingContext<Site>) -> Node {
        switch page.path.string {
        case Ggiannis.SectionID.photos.rawValue:
            return .photos(for: page, context: context)
        default:
            return .defaultPage(for: page, context: context)
        }
    }
}

extension Node where Context == HTML.BodyContext {
    fileprivate static func defaultPage<Site>(for page: Page, context: PublishingContext<Site>) -> Node {
        return .pageContent(
            Wrapper(page.body).convertToNode()
        )
    }

    fileprivate static func photos<Site>(for page: Page, context: PublishingContext<Site>) -> Node {
        PhotosPage(context: context).convertToNode()
    }
}

extension Node where Context == HTML.BodyContext {
    static func pageContent(_ nodes: Node...) -> Node {
        return .group(nodes)
    }
}
