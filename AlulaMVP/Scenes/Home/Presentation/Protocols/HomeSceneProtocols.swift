//
//  HomeSceneProtocols.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 24/04/2024.
//

import Foundation

protocol HomeViewProtocol: BaseViewControllerProtocol {}

protocol HomePresenterInputProtocol {
    func viewDidLoad()
}

protocol HomePresenterOutputProtocol {}

typealias HomePresenterProtocol = HomePresenterInputProtocol & HomePresenterOutputProtocol
