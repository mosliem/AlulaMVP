//
//  LoginUsecaseProtocol.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 24/04/2024.
//

import Foundation
import Utilits

protocol LoginUsecaseProtocol {
     func execute<T>(
        with data: LoginData?,
        success: @escaping (T) -> Void,
        failure: @escaping (APIError) -> Void
    )
}
