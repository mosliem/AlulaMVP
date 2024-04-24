//
//  BasePresenter.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 22/04/2024.
//

import UIKit

//Protocol Version
//protocol BasePresenterProtocol {
//    associatedtype ViewType: BaseViewControllerProtocol
//    associatedtype CoordinatorType: Coordinator
//    associatedtype UsecaseType: BaseUsecaseProtocol
//    
//    var view: ViewType? { get set }
//    var coordinator: CoordinatorType? { get set }
//    var usecase: UsecaseType? { get set }
//    func viewDidLoad()
//}

//Class Version
class BasePresenter <View, Coordinator, Usecase> {
    var view: View?
    var coordinator: Coordinator?
    var usecase: Usecase?
    
    init(view: View?, coordinator: Coordinator?, usecase: Usecase?) {
        self.view = view
        self.coordinator = coordinator
        self.usecase = usecase
    }
    
    func viewDidLoad(){}
}
