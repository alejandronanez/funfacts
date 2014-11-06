//
//  ViewController.swift
//  funFacts
//
//  Created by Alejo Nanez Ortiz on 11/5/14.
//  Copyright (c) 2014 Alejandro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    let factBook = FactBook()
    let colorWheel = ColorWheel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factBook.factsArray[0]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        var backgroundColor = colorWheel.randomColor()
        
        view.backgroundColor = backgroundColor
        funFactButton.tintColor = backgroundColor
        
        funFactLabel.text = factBook.randomFact()
    }

}

