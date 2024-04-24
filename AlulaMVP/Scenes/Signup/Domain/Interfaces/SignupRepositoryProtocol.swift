//
//  SignupRepositoryProtocol.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 23/04/2024.
//

import Foundation
import Combine
import Utilits

protocol SignupRepositoryProtocol {
    func execute<ResponseType: Codable>(
        repoModel: SignupRepositoryData,
        responseModel: ResponseType.Type
    ) -> AnyPublisher<
        ResponseType,
        APIError
    >
}
