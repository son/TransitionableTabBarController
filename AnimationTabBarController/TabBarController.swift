//
//  TabBarController.swift
//  AnimationTabBarController
//
//  Created by Takeru Sato on 2019/03/24.
//  Copyright © 2019 son. All rights reserved.
//

import UIKit

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        
        let vc1 = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()!
        vc1.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
        
        let vc2 = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()!
        vc2.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)

        let vc3 = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()!
        vc3.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
        
        setViewControllers([vc1, vc2, vc3], animated: false)
    }
}

extension TabBarController: TransitionableTab {
    
    func transitionDuration() -> CFTimeInterval {
        return 0.4
    }

    func transitionTimingFunction() -> CAMediaTimingFunction {
        return .easeInOut
    }

    func fromTransitionAnimation(layer: CALayer?, direction: Direction) -> CAAnimation {
        return DefineAnimation.move(.from, direction: direction)
    }

    func toTransitionAnimation(layer: CALayer?, direction: Direction) -> CAAnimation {
        return DefineAnimation.move(.to, direction: direction)
    }

    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        return animateTransition(tabBarController, shouldSelect: viewController)
    }
}
