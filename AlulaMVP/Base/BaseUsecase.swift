//
//  BaseUsecase.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 22/04/2024.
//

import Foundation

protocol BaseUsecaseProtocol: AnyObject {
    associatedtype RepositoryType: BaseRepositoryProtocol
    associatedtype ModelType
    
    var repository: RepositoryType? { get set }
}

extension BaseUsecaseProtocol{
    func execute<T>(
        with data: ModelType? = nil,
        completion: @escaping(T) -> Void
    ) {}
}

class BaseUsecase<
    RepositoryType: BaseRepositoryProtocol,
    ModelType
>: BaseUsecaseProtocol {
    var repository: RepositoryType?
}
