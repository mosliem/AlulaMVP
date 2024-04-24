//
//  BaseLocalRepository.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 22/04/2024.
//

import Foundation

//protocol BaseLocalRepositoryProtocol{
//    associatedtype ModelType
//    func execute<T>(model: ModelType, completion: @escaping(T) -> Void)
//}

class BaseLocalRepository<ModelType> {
    func execute<T>(model: ModelType, completion: @escaping(T) -> Void){
        
    }
}
