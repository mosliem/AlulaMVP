//
//  SignupSceneProtocols.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 22/04/2024.
//

import Foundation

protocol SignupViewProtocol: BaseViewControllerProtocol {}

protocol SignupViewPresenterInputProtocol {
    func signupPressed()
    func alreadyMemberPressed()
    
}

protocol SignupViewPresenterOutputProtocol{}

typealias SignupViewPresenterProtocol = SignupViewPresenterInputProtocol & SignupViewPresenterOutputProtocol
