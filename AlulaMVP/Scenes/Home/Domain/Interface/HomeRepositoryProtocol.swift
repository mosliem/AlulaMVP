//
//  HomeRepositoryProtocol.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 24/04/2024.
//

import Foundation
import Utilits
import Combine

protocol HomeRepositoryProtocol {
    func getProducts(endpoint: Requsetable) -> AnyPublisher<[ProductDto], APIError>
    func cacheProducts(products: [ProductEntity])
}
