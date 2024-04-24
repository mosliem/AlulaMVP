//
//  LoginUsecase.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 24/04/2024.
//

import Foundation
import Utilits

class LoginUsecase: BaseUsecase<LoginRepositoryProtocol, LoginData> {
    
    var tokenAdapter: TokenAdapterProtocol?
    var repositoryAdapter: LoginRepositoryDataAdapter?
    
    init(repository: LoginRepositoryProtocol, tokenAdapter: TokenAdapterProtocol?, repositoryAdapter: LoginRepositoryDataAdapter?) {
        super.init(repositoryType: repository)
        self.tokenAdapter = tokenAdapter
        self.repositoryAdapter = repositoryAdapter
    }
    
    override func execute<T>(
        with data: LoginData?,
        success: @escaping (T) -> Void,
        failure: @escaping (APIError) -> Void
    ) {
        
        let endpoint = LoginAPIEndpoint.loginEndpoint()
        guard let loginDic = data?.loginDic, let repoData = repositoryAdapter?.adapt(
            endpoint: endpoint,
            loginBody: loginDic
        ) else{
            fatalError(
                "Login Data error"
            )
        }
        
        repository?.login(repoModel: repoData)
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .finished:
                    break
                case .failure(let error):
                    failure(error)
                }
            }, receiveValue: { token in
                success(token as! T)
            })
            .cancel()
    }
}
