//
//  TabBarController.swift
//  Table
//
//  Created by Igor Guzei on 09.12.2022.
//

import UIKit

final class TabBarController: UITabBarController {

    let vcTable1 = Table1()

    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.backgroundColor = .systemBackground

        let ncTable1: UINavigationController = {
            $0.setViewControllers([vcTable1], animated: true)
            $0.tabBarItem = UITabBarItem(title: "Feed", image: UIImage(systemName: "tablecells"), tag: 0)
            return $0
        }(UINavigationController())

        viewControllers = [ncTable1]
        selectedIndex = 0
    }
}
