//
//  TabBarController.swift
//  Table
//
//  Created by Igor Guzei on 09.12.2022.
//

import UIKit

final class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.backgroundColor = .systemBackground

        var vc: Array<UIViewController> = []
        var nc: Array<UINavigationController> = []

        vc = [VC0(), VC1(), VC2()]

        vc.forEach{nc.append(UINavigationController(rootViewController: $0))}
        for i in 0..<nc.count {nc[i].tabBarItem = UITabBarItem(title: String(i), image: UIImage(systemName: "tablecells"), tag: 0)}
        viewControllers = nc

        selectedIndex = 2
    }
}
