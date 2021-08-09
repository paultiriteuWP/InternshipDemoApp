//
//  PhotoModel.swift
//  NewApp
//
//  Created by Paul Tiriteu on 09.08.2021.
//

import Foundation

struct PhotoModel: Decodable {
    let albumId: Int?
    let id: Int?
    let title: String?
    let url: String?
    let thumbnailUrl: String?
}
