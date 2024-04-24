//
//  BaseRemoteRepository.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 22/04/2024.
//

import Foundation
import Combine
import Utilits

//protocol BaseRemoteRepositoryProtocol: BaseRepositoryProtocol {
//    associatedtype ModelType
//    func execute<T>(model: ModelType?) -> AnyPublisher<T,APIError>
//}

protocol BaseRemoteRepositoryProtocol {
    associatedtype ModelType
    
    func execute<ResponseType: Codable>(
        repoModel: ModelType?,
        responseModel: ResponseType.Type
    ) -> AnyPublisher<
        ResponseType,
        APIError
    >
}

//class BaseRemoteRepository<ModelType> {
//    func execute<ResponseType: Codable>(
//        repoModel: ModelType?,
//        responseModel: ResponseType.Type
//    ) -> AnyPublisher<
//        ResponseType,
//        APIError
//    > {
//        
//    }
//}
