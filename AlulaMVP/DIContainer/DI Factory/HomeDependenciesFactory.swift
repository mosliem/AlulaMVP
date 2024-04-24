//
//  HomeDependenciesFactory.swift
//  Alula
//
//  Created by mohamed sliem on 17/04/2024.
//

import Foundation
import UIKit

class HomeDependenciesFactory: DependenciesFactory {
    func create(with coordinator: Coordinator) -> UIViewController {
        let remoteRepo = HomeRemoteRepository()
        let localRepo = HomeLocalRepository()

        let repository = HomeRepository(
            remoteRepository: remoteRepo,
            localRepository: localRepo
        )
        
        let usecase = FetchProductsUsecase(repositoryType: repository)

        var presenter = HomePresenter(coordinator: coordinator as? HomeCoordinatorProtocol, usecase: usecase)

        var viewController = HomeViewController<HomePresenter>()
        viewController.presenter = presenter
        presenter.view = viewController

        return viewController 
    }
}
