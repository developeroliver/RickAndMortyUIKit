//
//  RMTabVC.swift
//  RickAndMortyUIKit
//
//  Created by olivier geiger on 21/05/2023.
//

import UIKit

class RMTabVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setUpTabs()
    }
    
    
    private func setUpTabs() {
        let characterVC = RMCharacterVC()
        let locationVC = RMLocationVC()
        let episodeVC = RMEpisodeVC()
        let setttingsVC = RMSettingsVC()
        
        characterVC.navigationItem.largeTitleDisplayMode = .automatic
        locationVC.navigationItem.largeTitleDisplayMode = .automatic
        episodeVC.navigationItem.largeTitleDisplayMode = .automatic
        setttingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        let navCharacterVC = UINavigationController(rootViewController: characterVC)
        let navLocationVC = UINavigationController(rootViewController: locationVC)
        let navEpisodeVC = UINavigationController(rootViewController: episodeVC)
        let navSetttingsVC = UINavigationController(rootViewController: setttingsVC)
        
        characterVC.tabBarItem = UITabBarItem(title: "Characters",
                                               image: UIImage(systemName: "person"),
                                               tag: 0)
        locationVC.tabBarItem = UITabBarItem(
            title: "Location",
            image: UIImage(systemName: "globe"),
            tag: 1)
        episodeVC.tabBarItem = UITabBarItem(
            title: "Episode",
            image: UIImage(systemName: "tv"),
            tag: 2)
        setttingsVC.tabBarItem = UITabBarItem(
            title: "Settings",
            image: UIImage(systemName: "gear"),
            tag: 3
        )
        
        for nav in [navCharacterVC, navLocationVC, navEpisodeVC, navSetttingsVC] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers([navCharacterVC, navLocationVC, navEpisodeVC, navSetttingsVC], animated: true)
    }

}
