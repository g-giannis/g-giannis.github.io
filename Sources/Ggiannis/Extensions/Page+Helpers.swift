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
        case Ggiannis.SectionID.blog.rawValue:
            return T(rawValue: Ggiannis.SectionID.blog.rawValue)
        case Ggiannis.SectionID.photos.rawValue:
            return T(rawValue: Ggiannis.SectionID.photos.rawValue)
        case Ggiannis.SectionID.about.rawValue:
            return T(rawValue: Ggiannis.SectionID.about.rawValue)
        case Ggiannis.SectionID.resume.rawValue:
            return T(rawValue: Ggiannis.SectionID.resume.rawValue)
        default:
            return nil
        }
    }
}
