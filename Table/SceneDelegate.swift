//
//  SceneDelegate.swift
//  Table
//
//  Created by Igor Guzei on 09.12.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }

        let viewController: Array<UIViewController> = [VC0(), VC1(), VC2(), VC3(), VC4()]
        var navigationController: Array<UINavigationController> = []
        for i in 0 ..< viewController.count {
            navigationController.append(UINavigationController(rootViewController: viewController[i]))
            navigationController[i].tabBarItem = UITabBarItem(title: String(i), image: UIImage(systemName: "tablecells"), tag: 0)
        }

        let tabBarController = UITabBarController()
        tabBarController.tabBar.backgroundColor = .systemBackground
        tabBarController.viewControllers = navigationController
        tabBarController.selectedIndex = 4

        let window = UIWindow(windowScene: scene)
        window.rootViewController = tabBarController
        window.makeKeyAndVisible()

        self.window = window
    }
}
