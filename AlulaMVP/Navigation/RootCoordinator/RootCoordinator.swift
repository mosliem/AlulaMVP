//
//  RootCoordinator.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 22/04/2024.
//

import UIKit

class RootCoordinator: Coordinator {
    var diContainter: FactoryProtocol
    var navigationController: UINavigationController

    init(
        DIContainter: FactoryProtocol,
        navigationController: UINavigationController
    ) {
        self.diContainter = DIContainter
        self.navigationController = navigationController
    }

    func start(animated: Bool) {
        let authCoordinator = AuthCoordinator(DIContainter: diContainter, navigationController: navigationController)
        authCoordinator.start(animated: true)
    }
}
