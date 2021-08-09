//
//  ListRepository.swift
//  NewApp
//
//  Created by Paul Tiriteu on 09.08.2021.
//

import Foundation
import Alamofire

class ListRepository {
    let baseUrlString = "https://jsonplaceholder.typicode.com/photos"
    
    func getPhotos(completion: @escaping ([PhotoModel]?) -> Void) {
        AF.request(baseUrlString).responseJSON { response in
            switch response.result {
            case .success:
                let decoder = JSONDecoder()
                
                guard let data = response.data else { return }
                let photosArray = try? decoder.decode([PhotoModel].self, from: data)
                completion(photosArray)
            case .failure(let error):
                print(error)
            }
        }
    }
}
