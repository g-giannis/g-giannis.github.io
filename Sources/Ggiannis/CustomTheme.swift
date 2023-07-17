//
//  CustomTheme.swift
//  
//
//  Created by Ioannis Giannopoulos on 03.04.22.
//

import Publish
import Plot

extension Theme<Ggiannis> {
    static var custom: Self {
        Theme(
            htmlFactory: CustomThemeFactory(),
            resourcePaths: [
                "Resources/Default/styles.css",
                "Resources/SplashPublishPlugin/xcodeColors.css",
                "Resources/Default/images.css"
            ]
        )
    }
}

private struct CustomThemeFactory: HTMLFactory {
    func makeIndexHTML(for index: Index,
                       context: PublishingContext<Ggiannis>) throws -> HTML {
        HTML(
            .lang(context.site.language),
            .customHead(for: index, on: context.site, stylesheetPaths: [
                "/styles.css",
                "/xcodeColors.css",
            ]),
            .body {
                SiteHeader(context: context, selectedSelectionID: nil)
                Wrapper {
                    H1(index.title)
                    Paragraph(context.site.description)
                        .class("description")

                    H2("Hi, I'm Giannis.")
                    Paragraph {
                        Text("""
                                Welcome to my blog!
                                Here, I share updates on both my professional work and personal hobbies, so you can expect to find a mix of content that reflects my diverse interests. 😃
                                """)
                    }

                    LineBreak()

                    Div {
                        Div {
                            H2("Latest News")

                            ItemList(
                                items: context.mostRecentFiveItems,
                                site: context.site
                            )
                        }.class("column-content-left")

                        Div {
                            Div {
                                H2("Explore Categories")

                                ItemTagList(tags: context.allTags.sorted(), site: context.site)

                                LineBreak()
                            }.class("sticky-container")
                        }.class("column-content-right")
                    }.class("column-content")

                    LineBreak()
                }
                SiteFooter()
            }
        )
    }

    func makeSectionHTML(for section: Section<Ggiannis>,
                         context: PublishingContext<Ggiannis>) throws -> HTML {
        HTML(
            .lang(context.site.language),
            .customHead(for: section, on: context.site),
            .body {
                SiteHeader(context: context, selectedSelectionID: section.id)
                Wrapper {
                    ItemList(items:context.sort(section.items, sortedBy: \.date, order: .descending), site: context.site)
                }
                SiteFooter()
            }
        )
    }

    func makeItemHTML(for item: Item<Site>,
                      context: PublishingContext<Site>) throws -> HTML {
        HTML(
            .lang(context.site.language),
            .customHead(for: item, on: context.site, stylesheetPaths: [
                "/styles.css",
                "/xcodeColors.css",
            ]),
            .body(
                .class("item-page"),
                .components {
                    SiteHeader(context: context, selectedSelectionID: item.sectionID)
                    Wrapper {
                        Article {
                            Div(item.content.body).class("content")
                            Span("Tagged with: ")
                            ItemTagList(tags: item.tags, site: context.site).style("margin-top: 10px;")
                        }
                    }
                    SiteFooter()
                }
            )
        )
    }

    func makePageHTML(for page: Page,
                      context: PublishingContext<Ggiannis>) throws -> HTML {
        HTML(
            .lang(context.site.language),
            .customHead(for: page, on: context.site, stylesheetPaths: [
                "/styles.css",
                "/xcodeColors.css",
                "/images.css"]),
            .body {
                SiteHeader(context: context,
                           selectedSelectionID: page.selectedSectionID())
                Node.customPage(for: page, context: context)
                SiteFooter()
            }
        )
    }

    func makeTagListHTML(for page: TagListPage,
                         context: PublishingContext<Ggiannis>) throws -> HTML? {
        HTML(
            .lang(context.site.language),
            .customHead(for: page, on: context.site),
            .body {
                SiteHeader(context: context, selectedSelectionID: nil)
                Wrapper {
                    H1("Browse all tags")
                    ItemTagList(tags: page.tags.sorted(), site: context.site)
//                    List(page.tags.sorted()) { tag in
//                        ListItem {
//                            Link(tag.string,
//                                 url: context.site.path(for: tag).absoluteString
//                            )
//                        }
//                        .class("tag")
//                    }
//                    .class("all-tags")
                }
                SiteFooter()
            }
        )
    }

    func makeTagDetailsHTML(for page: TagDetailsPage,
                            context: PublishingContext<Ggiannis>) throws -> HTML? {
        HTML(
            .lang(context.site.language),
            .customHead(for: page, on: context.site),
            .body {
                SiteHeader(context: context, selectedSelectionID: nil)
                Wrapper {
                    H1 {
                        Text("Tagged with ")
                        Span(page.tag.string).class("tag")
                    }

                    Link("Browse all tags",
                         url: context.site.tagListPath.absoluteString
                    )
                    .class("browse-all")

                    ItemList(
                        items: context.items(
                            taggedWith: page.tag,
                            sortedBy: \.date,
                            order: .descending
                        ),
                        site: context.site
                    )
                }
                SiteFooter()
            }
        )
    }
}

struct LineBreak: Component {
    var body: Component {
        Text("").addLineBreak()
    }
}

struct Divider: Component {
    var body: Component {
        Node.hr(.empty)
    }
}
