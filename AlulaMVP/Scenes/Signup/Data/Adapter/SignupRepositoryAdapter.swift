//
//  SignupRepositoryAdapter.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 23/04/2024.
//

import Foundation
import Utilits

protocol SignupRepositoryAdapterProtocol {
    func adapt(
        endpoint: Requsetable,
        signupBody: SignupData
    ) -> SignupRepositoryData
}

class SignupRepositoryAdapter: SignupRepositoryAdapterProtocol{
    
    func adapt(
        endpoint: Requsetable,
        signupBody: SignupData
    ) -> SignupRepositoryData {
        
        return SignupRepositoryData(
            endpoint: endpoint,
            signupBody: signupBody.signupDic
        )
    }
}
