//
//  ViewController.swift
//  toDoTask
//
//  Created by Kim Kyung Dong on 1/1/21.
//

import UIKit

class ViewController: UIViewController {

    
//Connect each items for design
    @IBOutlet weak var firstScreenImageView: UIImageView!
    @IBOutlet weak var firstScreenLabel: UILabel!
    @IBOutlet weak var firstScreenImageViewRight: UIImageView!
    @IBOutlet weak var firstScreenInstructionLabel: UILabel!
    @IBOutlet weak var firstScreenDecisionButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    //Center Label Design
        firstScreenLabel.text = "Hello"
        firstScreenLabel.textAlignment = .center
        firstScreenLabel.textColor = .black
        firstScreenLabel.adjustsFontSizeToFitWidth = true
        firstScreenLabel.font = UIFont(name: "Gill Sans", size: 35)
        
    //Instruction Label Design
        firstScreenInstructionLabel.numberOfLines = 0
        firstScreenInstructionLabel.lineBreakMode = .byWordWrapping
        firstScreenInstructionLabel.text = "Choose uo to 5 lists. You can change them and add more later."
        firstScreenInstructionLabel.textAlignment = .center
        firstScreenInstructionLabel.font = UIFont(name: "Gill Sans", size: 22)
        firstScreenInstructionLabel.textColor = .darkGray
        
    //Decision Button Design
        firstScreenDecisionButton.setTitle("Done", for: .normal)
        firstScreenDecisionButton.backgroundColor = .black
        firstScreenDecisionButton.setTitleColor(.white, for: .normal)
        firstScreenDecisionButton.layer.cornerRadius = 10
        firstScreenDecisionButton.layer.borderWidth = 1
        firstScreenDecisionButton.layer.borderColor = UIColor.black.cgColor
        firstScreenDecisionButton.clipsToBounds = true
        firstScreenDecisionButton.titleLabel?.font = UIFont(name: "Gill Sans", size: 22)
        
        
    }


}

