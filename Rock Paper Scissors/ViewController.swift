//
//  ViewController.swift
//  Rock Paper Scissors
//
//  Created by Student on 12/1/20.
//  Copyright © 2020 pbowman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var userChoice = ""
    let opponentChoices = ["Rock", "Paper", "Scissor"]
    
    override func viewDidLoad() {
       super.viewDidLoad()
   }

    @IBAction func ifRockPressed(_ sender: Any) {
        userChoice = "Rock"
    }
    
    @IBAction func ifPaperPressed(_ sender: Any) {
        userChoice = "Paper"
    }
    
    @IBAction func ifScissorPressed(_ sender: Any) {
        userChoice = "Scissor"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! SecondViewController
        dvc.opponentChoice = opponentChoices.randomElement()!
        dvc.userChoice = userChoice
    }
}

