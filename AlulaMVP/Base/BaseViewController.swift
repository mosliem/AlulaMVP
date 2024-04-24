//
//  BaseViewController.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 22/04/2024.
//

import UIKit

protocol BaseViewControllerProtocol {
    associatedtype PresenterType
    var presenter: PresenterType? {get set}
}


