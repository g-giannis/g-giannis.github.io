//
//  File.swift
//  
//
//  Created by Ioannis Giannopoulos on 21.04.22.
//

import Foundation
import Plot

struct Wrapper: ComponentContainer {
    @ComponentBuilder var content: ContentProvider

    var body: Component {
        Div(content: content).class("wrapper")
    }
}
