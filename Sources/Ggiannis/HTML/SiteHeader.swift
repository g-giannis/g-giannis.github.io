//
//  File.swift
//  
//
//  Created by Ioannis Giannopoulos on 21.04.22.
//

import Foundation
import Plot
import Publish

struct SiteHeader: Component {
    var context: PublishingContext<Ggiannis>
    var selectedSelectionID: Ggiannis.SectionID?

    var body: Component {
        Header {
            Wrapper {
                Node.a(
                    Image(url: "/Images/Logo.svg", description: "Logo Giannis Giannopoulos")
                        .style("height: 100px;")
                        .convertToNode(),

                    .href(.init("/"))
                )

                if Ggiannis.SectionID.allCases.count > 1 {
                    navigation
                }

                SubscriptionBanner()
            }
        }
    }

    private var navigation: Component {
        Navigation {
            List(Ggiannis.SectionID.allCases) { sectionID in
                let section = context.sections[sectionID]

                return Link(section.title,
                            url: section.path.absoluteString
                )
                .class(sectionID == selectedSelectionID ? "selected" : "")
            }
        }
    }
}
