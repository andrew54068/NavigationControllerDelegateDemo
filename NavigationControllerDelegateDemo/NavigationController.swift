//
//  NavigationController.swift
//  Test
//
//  Created by kidnapper on 2019/9/27.
//  Copyright © 2019 andrew54068. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {
    
    var isFirstTime: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let rootVC = viewControllers.first,
            !(rootVC is ViewController1),
            isFirstTime {
            delegate = nil
            isFirstTime = false
        }
        super.viewDidAppear(animated)
        delegate = self
    }

}

extension NavigationController: UINavigationControllerDelegate {
    
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        print("will")
    }
    
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        print("did")
    }
    
}
