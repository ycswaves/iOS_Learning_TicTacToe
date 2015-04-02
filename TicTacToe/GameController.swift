//
//  GameController.swift
//  TicTacToe
//
//  Created by YCS on 2/4/15.
//  Copyright (c) 2015 ycswaves. All rights reserved.
//

import Foundation
import UIkit

class GameController {
    var isCross = true
    func placeSymbol() -> UIImage {
        var fileName = isCross ? "cross.png" : "nout.png"
        var image = UIImage(named: fileName)!
        isCross = !isCross
        return image
    }
}
