//
//  HomeAPIEndpoint.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 24/04/2024.
//

import Foundation

struct HomeAPIEndpoint {
    static func homeEndpoint() -> Endpoint {
        return Endpoint(
            schema: "https",
            host: "api.escuelajs.co",
            path: HomeApiPath.getProducts,
            queryParameters: ["limit": 10, "offset": 1],
            headers: ["Content-Type": "application/json"],
            httpMethod: .get
        )
    }
}
