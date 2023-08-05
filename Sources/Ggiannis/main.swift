import Foundation
import Publish
import Plot
import SplashPublishPlugin

// This type acts as the configuration for your website.
struct Ggiannis: Website {
    enum MarkdownDocumentType: String, Decodable {
        case quickTip
        case article
        case app
    }

    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case photos
        case blog
        case about
        case apps
        case resume
    }

    struct ItemMetadata: WebsiteItemMetadata {
        var type: MarkdownDocumentType
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://ggiannis.com")!
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
    .generateRSSFeed(including: [.blog]),
    .generateSiteMap(),
    .copyFile(at: Path("Content/robots.txt"))
])

