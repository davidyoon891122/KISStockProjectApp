//
//  MainTabBarController.swift
//  KISStockProject
//
//  Created by David Yoon on 2022/07/14.
//

import Foundation
import UIKit

final class MainTabBarController: UITabBarController {
    var viewControllerItems: [UIViewController] = TabBarMenu.allCases.map {
        let viewController = $0.viewController
        viewController.tabBarItem = UITabBarItem(
            title: $0.title,
            image: $0.icon.default,
            selectedImage: $0.icon.selected
        )
        return viewController
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }
}

private extension MainTabBarController {
    func setupTabBar() {
        view.backgroundColor = .systemBackground
        viewControllers = viewControllerItems

        if #available(iOS 15.0, *) {
            let appearance = UITabBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.backgroundColor = .systemBackground

            UITabBar.appearance().standardAppearance = appearance
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
    }
}
