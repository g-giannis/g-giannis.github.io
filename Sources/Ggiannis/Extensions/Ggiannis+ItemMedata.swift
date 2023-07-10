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
        case .app:
            return "Download App"
        }
    }

    var darkIcon: String {
        switch type {
        case .quickTip:
            return "/Images/DocumentTypes/idea-dark.svg"
        case .article:
            return "/Images/DocumentTypes/document-dark.svg"
        case .app:
            return "/Images/DocumentTypes/download-dark.svg"
        }
    }

    var lightIcon: String {
        switch type {
        case .quickTip:
            return "/Images/DocumentTypes/idea-light.svg"
        case .article:
            return "/Images/DocumentTypes/document-light.svg"
        case .app:
            return "/Images/DocumentTypes/download-light.svg"
        }
    }
}
