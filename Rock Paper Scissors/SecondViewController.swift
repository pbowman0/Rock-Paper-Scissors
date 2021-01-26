//
//  SecondViewController.swift
//  Rock Paper Scissors
//
//  Created by Student on 12/3/20.
//  Copyright © 2020 pbowman. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var userChoice = ""
    var opponentChoice = ""
    
    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var opponentLabel: UILabel!
    @IBOutlet weak var resultImage: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        userLabel.text = userChoice
        opponentLabel.text = opponentChoice
    }
    
    @IBAction func resultButton(_ sender: Any) {
        if userLabel.text! == "Rock" && opponentLabel.text! == "Scissor"{
            resultImage.image = UIImage(named: "youWin")
        }
        else if userLabel.text! == "Paper" && opponentLabel.text! == "Rock"{
            resultImage.image = UIImage(named: "youWin")
        }
        else if userLabel.text! == "Scissor" && opponentLabel.text! == "Paper"{
            resultImage.image = UIImage(named: "youWin")
        }
        else if userLabel.text! == "Rock" && opponentLabel.text! == "Paper"{
        resultImage.image = UIImage(named: "youLose")
        }
        else if userLabel.text! == "Paper" && opponentLabel.text! == "Scissor"{
        resultImage.image = UIImage(named: "youLose")
        }
        else if userLabel.text! == "Scissor" && opponentLabel.text! == "Rock"{
        resultImage.image = UIImage(named: "youLose")
        }
        else if userLabel.text! == "Scissor" && opponentLabel.text! == "Scissor"{
        resultImage.image = UIImage(named: "Tie")
        }
        else if userLabel.text! == "Rock" && opponentLabel.text! == "Rock"{
        resultImage.image = UIImage(named: "Tie")
        }
        else if userLabel.text! == "Paper" && opponentLabel.text! == "Paper"{
        resultImage.image = UIImage(named: "Tie")
        }
    }
}


