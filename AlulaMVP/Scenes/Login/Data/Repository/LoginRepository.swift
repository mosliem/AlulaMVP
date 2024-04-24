//
//  LoginRepository.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 24/04/2024.
//

import Foundation
import Utilits
import Combine

class LoginRepository: LoginRepositoryProtocol {
    func login(
        repoModel: LoginRepositoryData
    ) -> AnyPublisher<
        TokenDto,
        APIError
    > {
        return NetworkManager.shared.executeRequest(
            with: repoModel.endpoint,
            model: TokenDto.self ,
            body: repoModel.body
        )
    }
    
    
}
