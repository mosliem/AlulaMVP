//
//  BaseLocalRepository.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 22/04/2024.
//

import Foundation

protocol BaseLocalRepositoryProtocol: AnyObject {
    associatedtype LocalModelType
    func execute<T>(model: LocalModelType, completion: @escaping(T) -> Void)
}
