//
//  SignupPresenter.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 22/04/2024.
//

import Foundation


class SignupPresenter: BasePresenter<
SignupViewProtocol,
SignupCoordinatorProtocol,
SignupUsecaseProtocol
>, SignupViewPresenterProtocol {
    
    func signupPressed() {
        let signupData = SignupData(
            name: "Sliem",
            email: "mohamedsliem@gmail.com",
            password: "mohamed011",
            avatar: "https://picsum.photos/800",
            role: "customer"
        )
        
        usecase?.execute(with: signupData, success: { (user: User) in
            print(user)
        }, failure: { error in
            print(error)
        })
    }
    
    func alreadyMemberPressed() {
        coordinator?.login()
    }
}



