//
//  File.swift
//  
//
//  Created by Ioannis Giannopoulos on 21.04.22.
//

import Foundation
import Plot

struct SiteFooter: Component {
    var body: Component {
        Footer {
//            Paragraph {
//                Link("RSS feed", url: "/feed.rss")
//            }
            Paragraph {
                Text("© \(Calendar.current.component(.year, from: Date())) Giannis Giannopoulos, All rights reserved. Made with lots of ☕️ and ❤️ in Berlin.")
                    .addLineBreak()
                    .addLineBreak()
            }
        }
    }
}
