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

        let files = try! context.folder(at: "/Content/photos").files
        let itemsPerColumn = files.count() / 3
        self.filesToDisplay = Array(files).chunked(into: itemsPerColumn)

        self.columns = filesToDisplay.enumerated().map { $0.offset }
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
