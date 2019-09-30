//
//  TabBarController.swift
//  Test
//
//  Created by kidnapper on 2019/9/30.
//  Copyright © 2019 andrew54068. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    let vcA: UIViewController = ViewController1()
    let vcB: UIViewController = ViewController2()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let shopImage = UIImage(color: .red)
        let shopSelectedImage = UIImage(color: .red)
        let shopTabBarItem = UITabBarItem(title: "vc1",
                                          image: shopImage,
                                          selectedImage: shopSelectedImage)
        vcA.tabBarItem = shopTabBarItem
        
        let shopImage2 = UIImage(color: .green)
        let shopSelectedImage2 = UIImage(color: .green)
        let shopTabBarItem2 = UITabBarItem(title: "vc2",
                                          image: shopImage2,
                                          selectedImage: shopSelectedImage2)
        vcB.tabBarItem = shopTabBarItem2
        viewControllers = [
        NavigationController(rootViewController: vcA),
        NavigationController(rootViewController: vcB),
        ]
        
    }

}
