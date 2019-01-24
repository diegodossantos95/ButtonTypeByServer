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
    private var buttons = [Button]()

    // MARK: View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = Presenter(service: ButtonService())
        presenter?.delegate = self
        collectionView.dataSource = self
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        presenter?.viewWillAppear()
    }
}

extension ViewController: PresenterDelegate {
    func buttonsDidLoad(buttons: [Button]) {
        self.buttons = buttons
        collectionView.reloadData()
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return buttons.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // TODO: create cell for each type of button
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "buttonCell", for: indexPath)
        return cell
    }
}
