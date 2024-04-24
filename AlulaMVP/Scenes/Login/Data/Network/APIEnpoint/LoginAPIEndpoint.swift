//
//  LoginAPIEndpoint.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 24/04/2024.
//

import Foundation
import Utilits

struct LoginAPIEndpoint {
    static func loginEndpoint() -> Endpoint {
        return Endpoint(
            schema: "https",
            host: "api.escuelajs.co",
            path: LoginApiPath.loginPath,
            headers: ["Content-Type": "application/json"],
            httpMethod: .post
        )
    }
}
