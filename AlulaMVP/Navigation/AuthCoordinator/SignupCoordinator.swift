//
//  SignupCoordinator.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 22/04/2024.
//

import UIKit

import UIKit

protocol SignupCoordinatorProtocol {
    func login()
}

class SignupCoordinator: Coordinator {
    var diContainter: FactoryProtocol
    var navigationController: UINavigationController
    var parent: AuthCoordinator

    init(
        DIContainter: FactoryProtocol,
        navigationController: UINavigationController,
        parent: AuthCoordinator
    ) {
        self.diContainter = DIContainter
        self.navigationController = navigationController
        self.parent = parent
    }

    func start(animated: Bool) {
        let viewController = diContainter.createVC(for: .signup, with: self)
        navigationController.pushViewController(viewController, animated: true)
    }

}

extension SignupCoordinator: SignupCoordinatorProtocol {
    func login() {
        parent.login()
    }
}
