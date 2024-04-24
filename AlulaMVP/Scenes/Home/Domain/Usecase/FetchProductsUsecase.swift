//
//  FetchProductsUsecase.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 24/04/2024.
//

import Foundation

class FetchProductsUsecase: BaseUsecase<HomeRepositoryProtocol, Any>, FetchProductsUsecaseProtocol {
    
    func fetchProducts() {
        let endpoint = HomeAPIEndpoint.homeEndpoint()
        repository?.getProducts(endpoint: endpoint)
            .sink { completion in
                switch completion {
                case .finished:
                    break
                case.failure(let error):
                    print(error)
                }
            } receiveValue: { [weak self] products in
                let products = products.map({$0.toDomain()})
                self?.repository?.cacheProducts(products: products)
            }
            .cancel()
    }
    
}
