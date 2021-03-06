import Foundation
import Publish
import Plot
import SplashPublishPlugin

// This type acts as the configuration for your website.
struct Ggiannis: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case photos
        case posts
        case about
        case resume
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://your-website-url.com")!
    var name = "GGiannis"
    var description = ""
    var language: Language { .english }
    var imagePath: Path? { nil }
}
    
try Ggiannis().publish(using: [
    .installPlugin(.splash(withClassPrefix: "")),
    .addMarkdownFiles(),
    .copyResources(),
    .copyResources(at: Path("Content/photos/"), to: Path("Images/photos"), includingFolder: false),
    .generateHTML(withTheme: .custom),
    .generateRSSFeed(including: [.posts]),
    .generateSiteMap(),
])

