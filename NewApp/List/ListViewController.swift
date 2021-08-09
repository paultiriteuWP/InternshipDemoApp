//
//  ListViewController.swift
//  NewApp
//
//  Created by Paul Tiriteu on 09.08.2021.
//

import UIKit

class ListViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    private let viewModel: ListViewModel
    
    init(viewModel: ListViewModel) {
        self.viewModel = viewModel
        super.init(nibName: "ListViewController", bundle: Bundle(for: ListViewController.self))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "PhotoTableViewCell", bundle: Bundle(for: PhotoTableViewCell.self)), forCellReuseIdentifier: "PhotoTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
        
        viewModel.getPhotos(completion: { [weak self] in
            self?.tableView.reloadData()
        })
    }
}

extension ListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.photos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PhotoTableViewCell", for: indexPath)
                as? PhotoTableViewCell else { return UITableViewCell() }
        let photo = viewModel.photos[indexPath.row]
        
        guard let thumbnail = photo.thumbnailUrl, let title = photo.title else { return cell }
        cell.configure(thumbnailUrl: thumbnail, title: title)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewModel.pushDetailsViewController(index: indexPath.row)
    }
}
