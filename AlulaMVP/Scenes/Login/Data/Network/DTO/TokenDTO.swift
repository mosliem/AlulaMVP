//
//  TokenDTO.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 24/04/2024.
//

import Foundation

struct TokenDto: Codable {
    var accessToken: String?
    var refreshToken: String?

    enum CodingKeys: String, CodingKey {
        case accessToken = "access_token"
        case refreshToken = "refresh_token"
    }
}

extension TokenDto {
    func toViewModel() -> Token {
        return .init(
            accessToken: accessToken ?? "",
            refreshToken: refreshToken ?? ""
        )
    }
}
