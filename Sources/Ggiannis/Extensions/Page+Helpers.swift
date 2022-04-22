//
//  Page+Helpers.swift
//  
//
//  Created by Ioannis Giannopoulos on 17.04.22.
//

import Plot
import Publish

extension Page {
    func selectedSectionID<T: WebsiteSectionID>() -> T? {
        switch path.string {
        case Ggiannis.SectionID.posts.rawValue:
            return T(rawValue: Ggiannis.SectionID.posts.rawValue)
        case Ggiannis.SectionID.photos.rawValue:
            return T(rawValue: Ggiannis.SectionID.photos.rawValue)
        case Ggiannis.SectionID.about.rawValue:
            return T(rawValue: Ggiannis.SectionID.about.rawValue)
        case Ggiannis.SectionID.résumé.rawValue:
            return T(rawValue: Ggiannis.SectionID.résumé.rawValue)
        default:
            return nil
        }
    }
}
