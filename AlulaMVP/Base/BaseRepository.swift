//
//  BaseRepository.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 22/04/2024.
//

import Foundation

protocol BaseRepositoryProtocol: AnyObject {
    associatedtype LocalRepository: BaseLocalRepositoryProtocol
    associatedtype RemoteRepository: BaseRemoteRepositoryProtocol
    associatedtype ModelType: Codable
    associatedtype LocalModelType
}

extension BaseRepositoryProtocol {
    func fetchRemote(with model: ModelType) {}
    func fetchlocal(with model: LocalModelType) {}
}

class BaseRepository <
    LocalRepository: BaseLocalRepositoryProtocol,
    RemoteRepository: BaseRemoteRepositoryProtocol,
    ModelType: Codable,
    LocalModelType
>: BaseRepositoryProtocol {
    
     var localRepository: LocalRepository?
     var remoteRepository: RemoteRepository?
}
