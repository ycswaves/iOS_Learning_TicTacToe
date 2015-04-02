//
//  ViewController.swift
//  TicTacToe
//
//  Created by YCS on 2/4/15.
//  Copyright (c) 2015 ycswaves. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let gc = GameController()
    @IBAction func placeSymbol(sender: AnyObject) {
        var image = gc.placeSymbol()
        sender.setImage(image, forState: .Normal)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

