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
    
    private var isCross = true
    private var boardStatus = [0,0,0,0,0,0,0,0,0]
    private var pieceCount = 0
    private var winningStatuses = [
        [0,1,2], [3,4,5], [6,7,8],
        [0,3,6], [1,4,7], [2,5,8],
        [0,4,8], [2,4,6]
    ]
    
    func getSymbol() -> UIImage {
        var fileName = isCross ? "cross.png" : "nout.png"
        var image = UIImage(named: fileName)!
        return image
    }
    
    func placePiece(btnTag: Int) -> Int {
        // 1=>cross, 2=>nought
        var piece = isCross ? 1 : 2
        boardStatus[btnTag] = piece
        pieceCount++
        isCross = !isCross // switch player
        return self.whoWin()
    }
    
    func isTileEmpty(btnTag: Int) -> Bool {
        return boardStatus[btnTag] == 0
    }
    
    
    // -1=>continue, 0=>draw, 1=>cross, 2=>nought
    private func whoWin() -> Int {
        if pieceCount < 5 {
            return -1;
        }
        
        for status in winningStatuses {
            if boardStatus[status[0]] != 0
               && boardStatus[status[0]] == boardStatus[status[1]]
               && boardStatus[status[0]] == boardStatus[status[2]] {
                    return boardStatus[status[0]]
            }
        }
        if pieceCount >= 9 {
            return 0
        } else {
            return -1
        }
    }
}
