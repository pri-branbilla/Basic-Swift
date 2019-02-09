//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Priscilla Nascimento da Silva on 05/12/18.
//  Copyright © 2018 Priscilla Nascimento da Silva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballResponse: UIImageView!
    var randomResponseNum: Int = 0
    let balls = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        randomResponse()
    }

    @IBAction func askButton(_ sender: UIButton) {
        randomResponse()
    }
    
    func randomResponse() {
        randomResponseNum = Int.random(in: 0 ... 4)
        ballResponse.image = UIImage(named: balls[randomResponseNum])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomResponse()
    }
    
}

