//
//  ListViewModel.swift
//  NewApp
//
//  Created by Paul Tiriteu on 09.08.2021.
//

import Foundation

class ListViewModel {
    private let repository: ListRepository
    private let router: MainRouter
    var photos = [PhotoModel]()
    
    init(repository: ListRepository, router: MainRouter) {
        self.repository = repository
        self.router = router
    }
    
    func getPhotos(completion: @escaping () -> Void) {
        repository.getPhotos(completion: { [weak self] response in
            guard let array = response else { return }
            self?.photos = array
            completion()
        })
    }
    
    func pushDetailsViewController(index: Int) {
        router.pushDetailsViewController(photo: photos[index])
    }
}
