//
//  SignupCoordinator.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 22/04/2024.
//

import UIKit

protocol SignupCoordinatorProtocol {
    func login()
}

class SignupCoordinator: Coordinator {
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

extension SignupCoordinator: SignupCoordinatorProtocol {
    func login() {
        parent.login()
    }
}
