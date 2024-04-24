//
//  signupUsecaseProtocol.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 23/04/2024.
//

import Foundation
import Utilits

//For presenter usage
protocol SignupUsecaseProtocol {
    func execute<T>(
        with data: SignupData?,
        success: @escaping (T) -> Void,
        failure: @escaping (APIError) -> Void
    )
}

