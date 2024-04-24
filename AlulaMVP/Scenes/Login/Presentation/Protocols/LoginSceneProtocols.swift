//
//  LoginSceneProtocols.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 24/04/2024.
//

import Foundation

protocol LoginView: BaseViewControllerProtocol {
    
}

protocol LoginViewPresenterInputProtocol {
    func loginPressed()
    func newUserPressed()
}

protocol LoginViewPresenterOutputProtocol {}

typealias LoginViewPresenterProtocol = LoginViewPresenterInputProtocol & LoginViewPresenterOutputProtocol
