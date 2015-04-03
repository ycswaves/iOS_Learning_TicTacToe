//
//  ViewController.swift
//  TicTacToe
//
//  Created by YCS on 2/4/15.
//  Copyright (c) 2015 ycswaves. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var gc = GameController()
    var whoWin = -1
    
    @IBAction func placeSymbol(sender: AnyObject) {
        if whoWin > -1 || !gc.isTileEmpty(sender.tag){
            return
        }
        var image = gc.getSymbol()
        sender.setImage(image, forState: .Normal)
        whoWin = gc.placePiece(sender.tag);
        
        switch whoWin {
        case 0:
            resultLabel.text = "It's a draw"
            showPlayAgainBtn()
        case 1, 2:
            resultLabel.text = "Player \(whoWin) Won!"
            showPlayAgainBtn()
        default:
            resultLabel.text = ""
        }
    }
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var playAgainBtn: UIButton!
    
    
    @IBAction func playAgainBtn(sender: AnyObject) {
        var button: UIButton
        for subview in view.subviews {
            if subview.isKindOfClass(UIButton) {
                subview.setImage(nil, forState: .Normal)
            }
        }
        whoWin = -1
        gc = GameController()
        hidePlayAgainBtn()
        resultLabel.text = ""
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        hidePlayAgainBtn()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        
    }
    
    func showPlayAgainBtn() {
        playAgainBtn.hidden = false
        UIView.animateWithDuration(0.5, animations: {() -> Void in
            self.playAgainBtn.center = CGPointMake(self.playAgainBtn.center.x + 600, self.playAgainBtn.center.y)
        })
    }
    
    func hidePlayAgainBtn() {
        playAgainBtn.hidden = true
        playAgainBtn.center = CGPointMake(playAgainBtn.center.x - 600, playAgainBtn.center.y)
    }

}

