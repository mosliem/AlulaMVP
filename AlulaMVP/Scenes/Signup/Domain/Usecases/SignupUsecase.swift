//
//  SignupUsecase.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 23/04/2024.
//

import Foundation
import Utilits

class SignupUsecase: BaseUsecase<SignupRepositoryProtocol, SignupData>, SignupUsecaseProtocol {
    
    var repoAdapter: SignupRepositoryAdapterProtocol?
    var userAdapter: SignupUserAdapterProtocol?
    
    override func execute<T>(with data: SignupData?, success: @escaping (T) -> Void, failure: @escaping (APIError) -> Void) {
        guard let data = data else {
            fatalError("Error Sign up model")
        }
        
        let endpoint = SignupAPIEndpoint.signup()
        guard let repoModel = repoAdapter?.adapt(
            endpoint: endpoint,
            signupBody: data
        ) else {
            return
        }
        
        repository?.execute(repoModel: repoModel, responseModel: UserSignupDto.self)
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .finished:
                    break
                case .failure(let error):
                    failure(error)
                }
            }, receiveValue: { [weak self] userResponse in
                let user = self?.userAdapter?.adapt(user: userResponse)
                success(user as! T)
            })
            .cancel()
    }
}




