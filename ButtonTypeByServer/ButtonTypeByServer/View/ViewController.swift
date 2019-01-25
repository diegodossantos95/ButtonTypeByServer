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
        let button = buttons[indexPath.row]
        var cell = collectionView.dequeueReusableCell(withReuseIdentifier: button.type.rawValue, for: indexPath) as! ButtonCellProtocol & UICollectionViewCell

        cell.configure(button: button)
        cell.delegate = self

        return cell
    }
}

extension ViewController: ButtonCellDelegate {
    func buttonDidPress(name: String) {
        let alert = UIAlertController(title: name, message:
            name, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))

        self.present(alert, animated: true, completion: nil)
    }
}
