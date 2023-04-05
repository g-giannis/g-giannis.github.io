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

private extension Node where Context == HTML.DocumentContext {
    static func googleAnalytics() -> Node<HTML.HeadContext> {
        return .raw("""
<script async src="https://www.googletagmanager.com/gtag/js?id=G-D9VMERTEDS"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-D9VMERTEDS');
</script>
""")
    }
}

extension Node where Context == HTML.DocumentContext {
    static func customHead<T: Website>(for index: Publish.Location, on site: T,
                                       stylesheetPaths: [Path] = ["/styles.css"]) -> Node {
        .group(
            .head(for: index, on: site, stylesheetPaths: stylesheetPaths),
//            .raw("<meta http-equiv=\"refresh\" content=\"3\" >"),
            .metaTheme().convertToNode(),
            .googleAnalytics().convertToNode()
        )
    }
}

