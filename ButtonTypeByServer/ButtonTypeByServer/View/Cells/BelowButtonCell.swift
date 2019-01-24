//
//  BelowButtonCell.swift
//  ButtonTypeByServer
//
//  Created by dos Santos, Diego on 24/01/19.
//  Copyright © 2019 Diego. All rights reserved.
//

import Foundation
import UIKit

class BelowButtonCell: UICollectionViewCell, ButtonCellProtocol {

    @IBOutlet weak var nameLabel: UILabel!

    func configure(button: Button) {
        nameLabel.text = button.name
    }
}
