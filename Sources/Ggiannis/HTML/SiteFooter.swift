//
//  File.swift
//  
//
//  Created by Ioannis Giannopoulos on 21.04.22.
//

import Foundation
import Plot

struct ImageDescriptor {
    let name: String
    let lightThemePath: String
    let darkThemePath: String
    let size: CGFloat
    let title: String

    let link: String
}

struct SiteFooter: Component {
    let images: [ImageDescriptor] = [
        .init(
            name: "Github",
            lightThemePath: "/Images/Footer/github-light.svg",
            darkThemePath: "/Images/Footer/github-dark.svg",
            size: 32,
            title: "Github",
            link: "https://github.com/g-giannis"
        ),
        .init(
            name: "Mastodon",
            lightThemePath: "/Images/Footer/mastodon-light.svg",
            darkThemePath: "/Images/Footer/mastodon-dark.svg",
            size: 32,
            title: "Mastodon",
            link: "https://mastodon.social/@ggiannis"
        ),
        .init(
            name: "LinkedIn",
            lightThemePath: "/Images/Footer/linked-in-light.svg",
            darkThemePath: "/Images/Footer/linked-in-dark.svg",
            size: 32,
            title: "LinkedIn",
            link: "https://www.linkedin.com/in/ggiannis"
        ),
        .init(
            name: "Email",
            lightThemePath: "/Images/Footer/mail-light.svg",
            darkThemePath: "/Images/Footer/mail-dark.svg",
            size: 32,
            title: "Email",
            link: "mailto:\("contact@ggiannis.com")"
        ),
        .init(
            name: "RSS Feed",
            lightThemePath: "/Images/Footer/rss-feed-light.svg",
            darkThemePath: "/Images/Footer/rss-feed-dark.svg",
            size: 32,
            title: "Email",
            link: "/feed.rss"
        )
    ]

    var body: Component {
        Footer {
            Paragraph {
                Div {
                    Node.forEach(images) { image in
                        Node.a(
                            Node.picture(
                                .source(.srcset(image.darkThemePath), .media("(prefers-color-scheme:dark)")),
                                Image(url: image.lightThemePath, description: image.name)
                                    .style("height: \(image.size)px; padding: 5px;")
                                    .attribute(named: "title", value: image.title)
                                    .convertToNode()
                            ),
                            .href(URL(string: image.link)!)
                        )
                    }
                }

                Text("© \(Calendar.current.component(.year, from: Date())) Giannis Giannopoulos, All rights reserved. Made with lots of ☕️ and ❤️ in Berlin.")
                    .addLineBreak()
                    .addLineBreak()
            }
        }
    }
}
