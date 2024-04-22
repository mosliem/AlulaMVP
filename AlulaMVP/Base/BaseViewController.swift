//
//  BaseViewController.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 22/04/2024.
//

import UIKit

protocol BaseViewControllerProtocol: AnyObject {
    associatedtype PresenterType: BasePresenterProtocol
    
    var presenter: PresenterType? {get set}
}

class BaseViewController <
    PresenterType: BasePresenterProtocol
>: UIViewController,
   BaseViewControllerProtocol {
    
    var presenter: PresenterType?

}
