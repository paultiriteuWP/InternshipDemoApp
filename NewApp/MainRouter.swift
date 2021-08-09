//
//  MainRouter.swift
//  NewApp
//
//  Created by Paul Tiriteu on 09.08.2021.
//

import UIKit

class MainRouter {
    var navController = UINavigationController()
    
    func getInitialViewController() -> UINavigationController {
        let repository = ListRepository()
        let viewModel = ListViewModel(repository: repository, router: self)
        let viewController = ListViewController(viewModel: viewModel)
        navController = UINavigationController(rootViewController: viewController)
        
        return navController
    }
    
    func pushDetailsViewController(photo: PhotoModel) {
        let viewModel = DetailsViewModel(photo: photo)
        let viewController = DetailsViewController(viewModel: viewModel)
        
        navController.pushViewController(viewController, animated: true)
    }
}
