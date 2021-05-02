//
//  StoryBoarded.swift
//  CoordinatorDemo
//
//  Created by Arnav Agarwal on 02/05/21.
//

import Foundation
import UIKit

protocol StoryBoarded {
    static func instantiate() -> Self
}

extension StoryBoarded where Self: UIViewController {
    static func instantiate() -> Self {
        let id = String(describing: self)
        print("id = \(id)")
        let storyboad = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboad.instantiateViewController(identifier: id) as! Self
    }
}
