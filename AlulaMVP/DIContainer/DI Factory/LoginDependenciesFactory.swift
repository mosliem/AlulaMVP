//
//  LoginDependenciesFactory.swift
//  Alula
//
//  Created by mohamed sliem on 17/04/2024.
//

import UIKit

class LoginDependenciesFactory: DependenciesFactory {
    func create(with coordinator: Coordinator) -> UIViewController {
        let repository = LoginRepository()
        
        let tokenAdapter = TokenAdapter()
        let repositoryAdapter = LoginRepositoryDataAdapter()
        
        let usecase = LoginUsecase(repository: repository, tokenAdapter: tokenAdapter, repositoryAdapter: repositoryAdapter)
       
        let presenter = LoginPresenter(coordinator: coordinator as? LoginCoordinatorProtocol, usecase: usecase)
        let viewController = LoginViewController<LoginPresenter>()
        
        viewController.presenter = presenter
        presenter.view = viewController
        
        return viewController
    }
}
