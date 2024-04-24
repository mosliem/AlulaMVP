//
//  UserSignupDto.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 23/04/2024.
//

import Foundation

struct UserSignupDto: Codable {
    var id: Int
    var name: String
    var email: String
    var password: String
    var avatar: String?
    var role: String?

    var creationAt: String?
    var updatedAt: String?
}
