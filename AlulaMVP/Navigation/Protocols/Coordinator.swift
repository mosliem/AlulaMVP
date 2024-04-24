//
//  Coordinator.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 22/04/2024.
//

import UIKit

// Base functionality for all coordinators
protocol Coordinator: AnyObject {
    var navigationController: UINavigationController {get set}
    var diContainter: FactoryProtocol {get set}
    func start(animated: Bool)
}
