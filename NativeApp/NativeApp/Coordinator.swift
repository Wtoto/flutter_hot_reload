//
//  Coordinator.swift
//  WasonTest
//
//  Created by 吴琦 on 2020/12/1.
//

import UIKit

class Coordinator {
    
    func loginsuccess() {
        let viewController = ViewController()
        let nav = UINavigationController(rootViewController: viewController)
        setNavigationController(nav)
    }
    
    
    var window = UIWindow() // App window

    var navigationController: UINavigationController?
    
    


    func start() {
        loginsuccess()
    }
    
    
    func start(navigationController: UINavigationController) {
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        print("wqtest2  \(window)")
        self.navigationController = navigationController
    }
    
    private func setNavigationController(_ navigationController: UINavigationController) {
        navigationController.modalPresentationStyle = .fullScreen
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
        self.navigationController = navigationController
        
    }
}



