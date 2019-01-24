//
//  Presenter.swift
//  ButtonTypeByServer
//
//  Created by dos Santos, Diego on 23/01/19.
//  Copyright © 2019 Diego. All rights reserved.
//

import Foundation

protocol PresenterDelegate {

}

class Presenter {
    var delegate: PresenterDelegate

    init(delegate: PresenterDelegate) {
        self.delegate = delegate
    }
}
