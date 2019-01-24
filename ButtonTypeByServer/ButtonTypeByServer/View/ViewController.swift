//
//  ViewController.swift
//  ButtonTypeByServer
//
//  Created by dos Santos, Diego on 23/01/19.
//  Copyright © 2019 Diego. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK: Outlets
    @IBOutlet weak var collectionView: UICollectionView!

    // MARK: Properties
    private var presenter: Presenter?

    // MARK: View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = Presenter(service: ButtonService())
        presenter?.delegate = self
        collectionView.dataSource = self
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        presenter?.loadButtons()
    }
}

extension ViewController: PresenterDelegate {
    func showButtons() {
        // TODO: show the buttons in the collection view
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return presenter?.getButtons().count ?? 0
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // TODO: create cell for each type of button
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "buttonCell", for: indexPath)
        return cell
    }
}
