//
//  LoginRepositoryDataAdapter.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 24/04/2024.
//

import Foundation
import Utilits

protocol LoginRepositoryDataAdapterProtocol {
    func adapt(
        endpoint: Requsetable,
        loginBody: [String: String]
    ) -> LoginRepositoryData
}

class LoginRepositoryDataAdapter: LoginRepositoryDataAdapterProtocol {
    func adapt(
        endpoint: Requsetable,
        loginBody: [String: String]
    ) -> LoginRepositoryData {
        
        return LoginRepositoryData(
            endpoint: endpoint,
            body: loginBody
        )
    }
    
}
