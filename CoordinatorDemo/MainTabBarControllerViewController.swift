//
//  MainTabBarControllerViewController.swift
//  CoordinatorDemo
//
//  Created by Arnav Agarwal on 02/05/21.
//

import UIKit

class MainTabBarControllerViewController: UITabBarController {
    // create all main coordinators
    let main = MainCoordinator(navigationController: UINavigationController())

    override func viewDidLoad() {
        super.viewDidLoad()

        // call start on each parent coordinator
        main.start()
        // add all parent navigation controllers to this controllers viewController's list
        viewControllers = [main.navigationContorller]
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
