//
//  ServiceModel.swift
//  VKServices
//
//  Created by Антон Кулик on 02.08.2022.
//

import SwiftUI

// MARK: - Service
struct Service: Hashable, Codable {
    let name, serviceDescription: String
    let link: URL
    let iconURL: URL

    enum CodingKeys: String, CodingKey {
        case name
        case serviceDescription = "description"
        case link
        case iconURL = "icon_url"
    }
}
