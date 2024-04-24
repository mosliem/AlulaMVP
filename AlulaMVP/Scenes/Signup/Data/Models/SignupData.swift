//
//  SignupData.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 23/04/2024.
//

import Foundation

struct SignupData {
    var name: String
    var email: String
    var password: String
    var avatar: String
    var role: String

    var signupDic: [String: String] {
        return [
            "name": name,
            "email": email,
            "password": password,
            "avatar": avatar,
            "role": role
        ]
    }
}
