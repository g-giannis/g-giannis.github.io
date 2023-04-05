//
//  Ggiannis+ItemMetadata.swift
//  
//
//  Created by Ioannis Giannopoulos on 30.03.23.
//

import Foundation

extension Ggiannis.ItemMetadata {
    var displayText: String {
        switch type {
        case .quickTip:
            return "Quick Tip"
        case .article:
            return "Article"
        }
    }

    var darkIcon: String {
        switch type {
        case .quickTip:
            return "/Images/idea-dark.svg"
        case .article:
            return "/Images/document-dark.svg"
        }
    }

    var lightIcon: String {
        switch type {
        case .quickTip:
            return "/Images/idea-light.svg"
        case .article:
            return "/Images/document-light.svg"
        }
    }
}
