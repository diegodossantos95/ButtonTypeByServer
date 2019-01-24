//
//  ButtonService.swift
//  ButtonTypeByServer
//
//  Created by dos Santos, Diego on 23/01/19.
//  Copyright © 2019 Diego. All rights reserved.
//

import Foundation

class ButtonService {
    func getButtons() -> [Button]{
        return [
            Button(type: .below, name: "Apple"),
            Button(type: .left, name: "yahoo"),
            Button(type: .right, name: "Google")
        ]
    }
}
