//
//  BaseUsecase.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 22/04/2024.
//

import Foundation
import Utilits

//protocol BaseUsecaseProtocol {
//    associatedtype RepositoryType: BaseRepositoryProtocol
//    associatedtype ModelType
//    
//    var repository: RepositoryType? { get set }
//    
//    func execute<T>(
//        with data: ModelType? ,
//        success: @escaping(T) -> Void,
//        failure: @escaping(APIError) -> Void
//    )
//}

class BaseUsecase <RepositoryType, ModelType> {
    var repository: RepositoryType?
    
    init(repositoryType: RepositoryType? = nil) {
        self.repository = repositoryType
    }
    
    func execute<T>(
        with data: ModelType? ,
        success: @escaping(T) -> Void,
        failure: @escaping(APIError) -> Void
    ){}
}
