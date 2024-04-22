//
//  ChildCoordinator.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 22/04/2024.
//

protocol ParentCoordinator: Coordinator {
    var childCoordinators: [Coordinator] {get set}
    func addChild(_ child: Coordinator?)
    func childDidFinish(_ child: Coordinator?)
}

extension ParentCoordinator {

    func addChild(_ child: Coordinator?) {
        if let childCoordinator = child {
            childCoordinators.append(childCoordinator)
        }
    }

    func childDidFinish(_ child: Coordinator?) {
        for (index, coordinator) in childCoordinators.enumerated() where coordinator === child {
                childCoordinators.remove(at: index)
                break
        }
    }
}
