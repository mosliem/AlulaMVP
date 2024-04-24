//
//  HomeRepository.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 24/04/2024.
//

import Foundation
import Utilits
import Combine

class HomeRepository: HomeRepositoryProtocol {

    var remoteRepository: HomeRemoteRepositoryProtocol
    var localRepository: HomeLocalRepositoryProtocol

    init(remoteRepository: HomeRemoteRepositoryProtocol, localRepository: HomeLocalRepositoryProtocol) {
        self.remoteRepository = remoteRepository
        self.localRepository = localRepository
    }

    func getProducts(endpoint: Requsetable) -> AnyPublisher<[ProductDto], APIError> {
        return remoteRepository.getProducts(endpoint: endpoint)
    }

    func cacheProducts(products: [ProductEntity]) {
        localRepository.cacheProducts(products: products)
    }
}
