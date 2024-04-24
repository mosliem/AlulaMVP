//
//  LoginData.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 24/04/2024.
//

import Foundation

struct LoginData {
    var email: String
    var password: String

    var loginDic: [String: String] {
        return [
            "email": email,
            "password": password
        ]
    }
}
