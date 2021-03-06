//
//  TabBarViewController.swift
//  CarsApp
//
//  Created by  Tes on 04/12/2021.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: Create instance of viewControllers
        navigationController?.isNavigationBarHidden = true
        let homeViewController = ExploreViewController()
        let favoriteViewController = FavouriteViewController()
        let notificationViewController = NotificationViewController()
        let chatViewController = ChatViewController()
        let cartViewController = CartViewController()
        // MARK: Assign viewController to tab Bar
        self.setViewControllers([homeViewController, favoriteViewController, cartViewController, notificationViewController, chatViewController], animated: false)
        guard let items = self.tabBar.items else { return }
        let images = ["house.fill", "heart.fill","bag.fill", "bell.fill", "message.fill"]
        for item in 0...4 {
            items[item].image = UIImage(systemName: images[item])
        }
        // MARK: Changing tint Color
        self.tabBar.tintColor = .systemGray
        self.tabBar.backgroundColor = .white
        
    }
    
    
}
