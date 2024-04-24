//
//  RemoteSignupRepository.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 22/04/2024.
//

import Utilits
import Combine

class RemoteSignupRepository: SignupRepositoryProtocol{
    
    func execute<ResponseType: Codable>(
        repoModel: SignupRepositoryData,
        responseModel: ResponseType.Type
    ) -> AnyPublisher<
        ResponseType,
        APIError
    >  {
        
        let result =  NetworkManager.shared.executeRequest(
            with: repoModel.endpoint,
            model: ResponseType.self,
            body: repoModel.signupBody
        )
        return result
    }
}
