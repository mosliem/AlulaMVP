//
//  SignupDependenciesFactory.swift
//  Alula
//
//  Created by mohamed sliem on 17/04/2024.
//

import Foundation
import UIKit

class SignupDependenciesFactory: DependenciesFactory {

    func create(with coordinator: Coordinator) -> UIViewController {

        let repository = RemoteSignupRepository()
        let usecase = SignupUsecase(repositoryType: repository)
        
        let presenter = SignupPresenter(coordinator: coordinator as? SignupCoordinator, usecase: usecase)
        
        let viewController = SignupViewController<SignupPresenter>()
        viewController.presenter = presenter
        presenter.view = viewController

        return viewController
    }
}
