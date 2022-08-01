//
//  VK.swift
//  VKServices
//
//  Created by Антон Кулик on 01.08.2022.
//

import SwiftUI

// MARK: - Vk
struct VKDataModel: Codable {
    let body: Body
    let status: Int
}

// MARK: - Body
struct Body: Hashable, Codable {
    let services: [Service]
}

// MARK: - Service
struct Service: Hashable, Codable {
    let name, serviceDescription: String
    let link: String
    let iconURL: String

    enum CodingKeys: String, CodingKey {
        case name
        case serviceDescription = "description"
        case link
        case iconURL = "icon_url"
    }
}


//
//struct Course: Hashable, Codable {
//    let name: String
//    let image: String
//}
