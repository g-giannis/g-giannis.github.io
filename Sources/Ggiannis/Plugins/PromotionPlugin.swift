//
//  PromotionPlugin.swift
//  
//
//  Created by Ioannis Giannopoulos on 29.03.23.
//

import Plot
import Publish

extension PublishingStep where Site == Ggiannis {
    /** Useful to add a promotion to a specific page
     ```
      try Ggiannis().publish(using: [
        .installPlugin(.splash(withClassPrefix: "")),
        .addMarkdownFiles(),
        .copyResources(),
        .copyResources(at: Path("Content/photos/"), to: Path("Images/photos"), includingFolder: false),
        .addPromotion(), // Useful to ad
        .generateHTML(withTheme: .custom),
        .generateRSSFeed(including: [.blog]),
        .generateSiteMap(),
    ])
    ```
     */
    static func addPromotion() -> Self {
        return mutateAllItems(in: .blog) { item in
            return item.content.body.html = Node.a(.href("https://www.google.com"), .text("Check this amazing promotion")).render() + item.content.body.html
        }
    }
}
