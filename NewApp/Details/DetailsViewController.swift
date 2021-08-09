//
//  DetailsViewController.swift
//  NewApp
//
//  Created by Paul Tiriteu on 09.08.2021.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet weak var photoImageView: UIImageView!
    private let viewModel: DetailsViewModel
    
    init(viewModel: DetailsViewModel) {
        self.viewModel = viewModel
        super.init(nibName: "DetailsViewController", bundle: Bundle(for: DetailsViewController.self))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoImageView.kf.setImage(with: viewModel.getImageURL())
    }
}
