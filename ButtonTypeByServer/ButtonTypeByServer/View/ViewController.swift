//
//  ViewController.swift
//  ButtonTypeByServer
//
//  Created by dos Santos, Diego on 23/01/19.
//  Copyright © 2019 Diego. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var presenter: Presenter?

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = Presenter(delegate: self)
    }
}

extension ViewController: PresenterDelegate {

}

