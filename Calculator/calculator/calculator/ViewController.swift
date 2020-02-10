//
//  ViewController.swift
//  calculator
//
//  Created by Priscilla Nascimento da Silva on 09/02/20.
//  Copyright © 2020 Priscilla Nascimento da Silva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var calcValue: UILabel!
    
    private func addText(value: String) {
        if (calcValue.text == "0") {
            calcValue.text = value;
        } else {
            calcValue.text! += value;
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clearValue(_ sender: UIButton) {
        calcValue.text = "0";
    }

    @IBAction func valueButton(_ sender: UIButton) {
        addText(value: sender.currentTitle!)
    }
}

