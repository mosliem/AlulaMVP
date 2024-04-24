//
//  SignupEndpoint.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 23/04/2024.
//

import Foundation

import Foundation
import Utilits

struct SignupAPIEndpoint {
    static func signup() -> Requsetable {
        return Endpoint(
            schema: "https",
            host: SignupApiPath.signupHost,
            path: SignupApiPath.signupPath,
            headers: [
                "Content-Type": "application/json"
            ],
            httpMethod: .post
        )
    }
}
