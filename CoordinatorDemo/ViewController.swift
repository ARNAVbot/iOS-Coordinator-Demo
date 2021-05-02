//
//  ViewController.swift
//  CoordinatorDemo
//
//  Created by Arnav Agarwal on 02/05/21.
//

import UIKit

class ViewController: UIViewController, StoryBoarded {
    
    weak var coordinator : MainCoordinator?
    var flag : Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func createAccountTapped(_ sender: UIButton) {
        coordinator?.createAccount()
    }
    
    @IBAction func buyTapped(_ sender: UIButton) {
        coordinator?.buySubscription()
    }
}

