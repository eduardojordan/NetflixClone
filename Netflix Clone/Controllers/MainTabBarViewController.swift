//
//  ViewController.swift
//  Netflix Clone
//
//  Created by Eduardo Jordan on 4/3/25.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        setupBackground()
        SetupTabBar()
    }

    func setupBackground() {
        view.backgroundColor = .systemYellow
    }
    
    func SetupTabBar() {
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: UpcomingViewController())
        let vc3 = UINavigationController(rootViewController: SearchViewController())
        let vc4 = UINavigationController(rootViewController: DownloadsViewController())

        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "play.circle")
        vc3.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vc4.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        
        tabBar.tintColor = .white
        tabBar.barTintColor = .black
        tabBar.unselectedItemTintColor = .lightGray
        
        vc1.title = "Home"
        vc2.title = "Coming Soon"
        vc3.title = "Tap Search"
        vc4.title = "Downloads"
       
        for vc in [vc1, vc2, vc3, vc4] {
            vc.navigationBar.barTintColor = .black
            vc.navigationBar.tintColor = .white
            vc.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        }
        
        setViewControllers([vc1,vc2,vc3,vc4], animated: true)
        
    }

}
