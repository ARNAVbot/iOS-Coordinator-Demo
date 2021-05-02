//
//  Coordinator.swift
//  CoordinatorDemo
//
//  Created by Arnav Agarwal on 02/05/21.
//

import Foundation
import UIKit

protocol Coordinator {
    var childCoordinator : [Coordinator] {get set}
    var navigationContorller : UINavigationController {get set}
    
    func start()
}
