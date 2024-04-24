//
//  LoginRepositoryInterface.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 24/04/2024.
//

import Foundation
import Combine
import Utilits

protocol LoginRepositoryProtocol {
    func login(
        repoModel: LoginRepositoryData
    ) -> AnyPublisher<TokenDto, APIError>
    
}
