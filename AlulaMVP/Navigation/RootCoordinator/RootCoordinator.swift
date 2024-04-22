//
//  RootCoordinator.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 22/04/2024.
//

import UIKit

class RootCoordinator: Coordinator {
    var navigationController: UINavigationController

    init(
        navigationController: UINavigationController
    ) {
        self.navigationController = navigationController
    }

    func start(animated: Bool) {
        let authCoordinator = AuthCoordinator(navigationController: navigationController)
        authCoordinator.start(animated: true)
    }
}
