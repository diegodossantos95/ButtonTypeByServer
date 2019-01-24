//
//  Presenter.swift
//  ButtonTypeByServer
//
//  Created by dos Santos, Diego on 23/01/19.
//  Copyright © 2019 Diego. All rights reserved.
//

import Foundation

// MARK: Protocols
protocol PresenterDelegate: class {
    func buttonsDidLoad(buttons: [Button])
}

class Presenter {
    // MARK: Properties
    weak var delegate: PresenterDelegate?

    private var service: ButtonService

    // MARK: Class Lifecycle
    init(service: ButtonService) {
        self.service = service
    }

    // MARK: Functions
    func viewWillAppear() {
        loadButtons()
    }

    // MARK: Private Functions
    private func loadButtons() {
        let buttons = service.getButtons()
        delegate?.buttonsDidLoad(buttons: buttons)
    }
}
