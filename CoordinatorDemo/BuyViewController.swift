//
//  BuyViewController.swift
//  CoordinatorDemo
//
//  Created by Arnav Agarwal on 02/05/21.
//

import UIKit

class BuyViewController: UIViewController , StoryBoarded{
    
    weak var coordinator : BuyCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//        coordinator?.didFinishBuying()
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
