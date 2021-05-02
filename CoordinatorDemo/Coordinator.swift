//
//  Coordinator.swift
//  CoordinatorDemo
//
//  Created by Arnav Agarwal on 02/05/21.
//

import Foundation
import UIKit

// By adding any object, we make sure that this protocol is used by classes only
protocol Coordinator : AnyObject {
    var childCoordinator : [Coordinator] {get set}
    var navigationContorller : UINavigationController {get set}
    
    func start()
}
