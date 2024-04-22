//
//  BasePresenter.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 22/04/2024.
//

import UIKit

protocol BasePresenterProtocol: AnyObject {
    associatedtype ViewType: BaseViewControllerProtocol
    associatedtype CoordinatorType: Coordinator
    associatedtype UsecaseType: BaseUsecaseProtocol
    
    var view: ViewType? { get set }
    var coordinator: CoordinatorType? { get set }
    var usecase: UsecaseType? { get set }
    func viewDidLoad()
}

class BasePresenter <
    ViewType: BaseViewControllerProtocol,
    CoordinatorType: Coordinator,
    UsecaseType: BaseUsecaseProtocol
>: BasePresenterProtocol {
    
    var view: ViewType?
    
    var coordinator: CoordinatorType?
    
    var usecase: UsecaseType?
    
    func viewDidLoad() {}
}
