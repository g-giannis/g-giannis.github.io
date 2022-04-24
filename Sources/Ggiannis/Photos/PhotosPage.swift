//
//  PhotosPage.swift
//  
//
//  Created by Ioannis Giannopoulos on 21.04.22.
//

import Foundation
import Plot
import Publish
import struct Files.File

struct PhotosPage<Site: Website>: Component {

    init(context: PublishingContext<Site>) {
        self.context = context

        let numberOfColumns: Int = 4

        let files = try! context.folder(at: "/Content/photos").files.filter({ !$0.name.hasSuffix(".json") })
        columns = (0...numberOfColumns).map { $0 }
        var filesToDisplay = columns.map { _ in [File]() }
        var sectionIndex = 0

        files.forEach { file in
            filesToDisplay[sectionIndex].append(file)

            sectionIndex += 1

            if sectionIndex == numberOfColumns {
                sectionIndex = 0
            }
        }

        self.filesToDisplay = filesToDisplay
    }

    let columns: [Int]
    let context: PublishingContext<Site>

    let filesToDisplay: [[File]]

    var body: Component {
        Div {
            Div {
                Node.forEach(columns, { column in
                        .div(
                            .class("column"),
                            .photoColumn(for: column, items: filesToDisplay[safe: column] ?? [], context: context)
                        )
                })
            }.class("row")

            Div {
                Node.forEach(columns, { column in
                        .lightboxes(for: column, items: filesToDisplay[safe: column] ?? [], context: context)
                })
            }.class("lightboxes")
                .style("padding-bottom: 20px;")
        }.class("gallery")
            .style("padding-bottom: 20px;")
    }
}
