//
//  ButtonCellProtocol.swift
//  ButtonTypeByServer
//
//  Created by dos Santos, Diego on 24/01/19.
//  Copyright © 2019 Diego. All rights reserved.
//

import Foundation

protocol ButtonCellProtocol {
    var delegate: ButtonCellDelegate? { get set }
    func configure(button: Button)
}

protocol ButtonCellDelegate: class {
    func buttonDidPress(name: String)
}
