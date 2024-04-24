//
//  LoginPresenter.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 24/04/2024.
//

import Foundation

class LoginPresenter: BasePresenter<LoginView, LoginCoordinatorProtocol, LoginUsecaseProtocol>, LoginViewPresenterProtocol {

    func loginPressed() {
        let loginData = LoginData(
            email: "mohamedsliem@gmail.com",
            password: "mohamed011"
        )
        usecase?.execute(with: loginData, success: { (token: Token) in
            print(token)
        }, failure: { error in
            print(error)
        })
    }
    
    func newUserPressed() {
        coordinator?.signup()
    }
}
