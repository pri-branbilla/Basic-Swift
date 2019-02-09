//
//  ViewController.swift
//  DiceSimulator
//
//  Created by Priscilla Nascimento da Silva on 05/12/18.
//  Copyright © 2018 Priscilla Nascimento da Silva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    let dicesArray: [String] = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        randomDice()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        randomDice()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomDice()
    }
    
    func randomDice() {
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: dicesArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: dicesArray[randomDiceIndex2])
    }
    

}

