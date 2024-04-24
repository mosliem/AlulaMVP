//
//  HomePresenter.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 24/04/2024.
//

import Foundation

class HomePresenter: BasePresenter<HomeViewProtocol, HomeCoordinatorProtocol, FetchProductsUsecase>, HomePresenterProtocol {
    
    override func viewDidLoad() {
        usecase?.fetchProducts()
    }
}
