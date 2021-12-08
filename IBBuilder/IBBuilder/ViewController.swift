//
//  ViewController.swift
//  IBBuilder
//
//  Created by Vishal Kaushik on 12/3/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myButton: UIButton!
    
    @IBOutlet weak var filledButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myButton.setTitleColor(.red, for: .normal)
    }

    @IBAction func buttonClicked(_ sender: Any) {
        print("button clicked")
    }
    
    @IBAction func filledClicked(_ sender: Any) {
        print("button two clicked")
    }
}

