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
    func showButtons()
}

class Presenter {
    // MARK: Properties
    weak var delegate: PresenterDelegate?

    private var service: ButtonService
    private var buttons = [Button]()

    // MARK: Class Lifecycle
    init(service: ButtonService) {
        self.service = service
    }

    // MARK: Functions
    func getButtons() -> [Button] {
        return buttons
    }

    func loadButtons() {
        buttons = service.getButtons()
        delegate?.showButtons()
    }
}
