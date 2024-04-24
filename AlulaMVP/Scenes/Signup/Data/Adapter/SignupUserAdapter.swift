//
//  SignupUserAdapter.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 24/04/2024.
//

import Foundation

protocol SignupUserAdapterProtocol {
    func adapt(user: UserSignupDto) -> User
}

class SignupUserAdapter: SignupUserAdapterProtocol {
    func adapt(user: UserSignupDto) -> User {
        
        return User(
            id: user.id,
            name: user.name,
            email: user.email,
            password: user.password,
            avatar: user.avatar ?? "",
            role: user.role ?? "user"
        )
    }
}
