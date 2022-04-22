//
//  File.swift
//  
//
//  Created by Ioannis Giannopoulos on 21.04.22.
//

import Foundation
import Plot
import Publish

struct SiteHeader<Site: Website>: Component {
    var context: PublishingContext<Site>
    var selectedSelectionID: Site.SectionID?

    var body: Component {
        Header {
            Wrapper {
                Node.a(
                    Image(url: "/Images/Logo.svg", description: "Logo Giannis Giannopoulos")
                        .style("height: 100px;")
                        .convertToNode(),

                    .href(.init("/"))
                )

                if Site.SectionID.allCases.count > 1 {
                    navigation
                }
            }
        }
    }

    private var navigation: Component {
        Navigation {
            List(Site.SectionID.allCases) { sectionID in
                let section = context.sections[sectionID]

                return Link(section.title,
                            url: section.path.absoluteString
                )
                .class(sectionID == selectedSelectionID ? "selected" : "")
            }
        }
    }
}
