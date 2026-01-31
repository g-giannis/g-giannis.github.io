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
    .copyResourcesWithProperDirectories(),
    .copyResources(at: Path("Content/photos/"), to: Path("Images/photos"), includingFolder: false),
    .generateHTML(withTheme: .custom),
    .generateRSSFeed(including: [.blog]),
    .generateSiteMap(),
    .copyFile(at: Path("Content/robots.txt"))
])

extension PublishingStep where Site == Ggiannis {
    /// Custom resource copying that handles nested directories properly
    static func copyResourcesWithProperDirectories() -> Self {
        .step(named: "Copy Resources with Proper Directory Structure") { context in
            let fileManager = FileManager.default
            let resourcesFolder = try context.folder(at: "Resources")
            let resourcesPath = resourcesFolder.path
            let outputFolder = try context.outputFolder(at: Path(""))
            let outputPath = outputFolder.path

            guard fileManager.fileExists(atPath: resourcesPath) else {
                print("⚠️ Resources folder not found at: \(resourcesPath)")
                return
            }

            // Recursively copy all files while maintaining directory structure
            try copyDirectory(
                from: resourcesPath,
                to: outputPath,
                fileManager: fileManager,
                relativePath: ""
            )
        }
    }

    private static func copyDirectory(
        from sourcePath: String,
        to destinationBasePath: String,
        fileManager: FileManager,
        relativePath: String
    ) throws {
        let fullSourcePath = (sourcePath as NSString).appendingPathComponent(relativePath)

        guard let contents = try? fileManager.contentsOfDirectory(atPath: fullSourcePath) else {
            return
        }

        for item in contents {
            let itemRelativePath = (relativePath as NSString).appendingPathComponent(item)
            let itemSourcePath = (sourcePath as NSString).appendingPathComponent(itemRelativePath)
            let itemDestinationPath = (destinationBasePath as NSString).appendingPathComponent(itemRelativePath)

            var isDirectory: ObjCBool = false
            fileManager.fileExists(atPath: itemSourcePath, isDirectory: &isDirectory)

            if isDirectory.boolValue {
                // Create directory with proper structure
                try? fileManager.createDirectory(
                    atPath: itemDestinationPath,
                    withIntermediateDirectories: true,
                    attributes: nil
                )

                // Recursively copy subdirectory contents
                try copyDirectory(
                    from: sourcePath,
                    to: destinationBasePath,
                    fileManager: fileManager,
                    relativePath: itemRelativePath
                )
            } else {
                // Ensure parent directory exists
                let parentDirectory = (itemDestinationPath as NSString).deletingLastPathComponent
                try? fileManager.createDirectory(
                    atPath: parentDirectory,
                    withIntermediateDirectories: true,
                    attributes: nil
                )

                // Copy file, removing existing if necessary
                if fileManager.fileExists(atPath: itemDestinationPath) {
                    try? fileManager.removeItem(atPath: itemDestinationPath)
                }
                try? fileManager.copyItem(atPath: itemSourcePath, toPath: itemDestinationPath)
            }
        }
    }
}
