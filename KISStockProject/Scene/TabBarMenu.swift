//
//  TabBarMenu.swift
//  KISStockProject
//
//  Created by David Yoon on 2022/07/14.
//

import Foundation
import UIKit

enum TabBarMenu: CaseIterable {
    case home
    case sise

    var title: String {
        switch self {
        case .home:
            return "홈"
        case .sise:
            return "시세"
        }
    }

    var icon: (default: UIImage?, selected: UIImage?) {
        switch self {
        case .home:
            return (
                UIImage(systemName: ""),
                UIImage(systemName: "")
            )
        case .sise:
            return (
                UIImage(systemName: ""),
                UIImage(systemName: "")
            )
        }
    }

    var viewController: UIViewController {
        switch self {
        case .home:
            return UIViewController()
        case .sise:
            return UIViewController()
        }
    }
}
