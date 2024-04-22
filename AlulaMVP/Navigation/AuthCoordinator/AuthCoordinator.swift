//
//  AuthCoordinator.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 22/04/2024.
//


import UIKit

class AuthCoordinator: Coordinator, ParentCoordinator {
    var parentCoordinator: RootCoordinator?
    var navigationController: UINavigationController
    var childCoordinators: [Coordinator] = []

    init(
        parentCoordinator: RootCoordinator? = nil,
        navigationController: UINavigationController
    ) {
        self.parentCoordinator = parentCoordinator
        self.navigationController = navigationController
    }

    func start(animated: Bool) {
        signup()
    }
}

extension AuthCoordinator {
    func login() {

    }

    func signup() {
 
    }

    func home() {

    }
}
