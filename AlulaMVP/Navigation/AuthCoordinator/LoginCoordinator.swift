//
//  LoginCoordinator.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 22/04/2024.

import UIKit

protocol LoginCoordinatorProtocol {
    func signup()
    func home()
}

class LoginCoordinator: Coordinator {
    var navigationController: UINavigationController
    var parent: AuthCoordinator

    init(
        navigationController: UINavigationController,
        parent: AuthCoordinator
    ) {
        self.navigationController = navigationController
        self.parent = parent
    }

    func start(animated: Bool) {

    }

}

extension LoginCoordinator: LoginCoordinatorProtocol {
    func signup() {
        parent.signup()
    }

    func home() {
        parent.home()
    }
}
