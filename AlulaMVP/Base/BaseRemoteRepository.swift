//
//  BaseRemoteRepository.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 22/04/2024.
//

import Foundation

protocol BaseRemoteRepositoryProtocol: AnyObject {
    associatedtype RemoteModelType
    func execute<T>(model: RemoteModelType, completion: @escaping(T) -> Void)
}
