//
//  DetailsViewModel.swift
//  NewApp
//
//  Created by Paul Tiriteu on 09.08.2021.
//

import Foundation

class DetailsViewModel {
    private let photo: PhotoModel
    
    init(photo: PhotoModel) {
        self.photo = photo
    }
    
    func getImageURL() -> URL? {
        return URL(string: photo.url ?? "")
    }
}
