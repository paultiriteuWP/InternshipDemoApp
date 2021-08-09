//
//  PhotoTableViewCell.swift
//  NewApp
//
//  Created by Paul Tiriteu on 09.08.2021.
//

import UIKit
import Kingfisher

class PhotoTableViewCell: UITableViewCell {
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    func configure(thumbnailUrl: String, title: String) {
        titleLabel.text = title
        guard let imageURL = URL(string: thumbnailUrl) else { return }
        photoImageView.kf.setImage(with: imageURL)
    }
}
