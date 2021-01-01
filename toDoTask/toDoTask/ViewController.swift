//
//  ViewController.swift
//  toDoTask
//
//  Created by Kim Kyung Dong on 1/1/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
//Connect each items for design
    @IBOutlet weak var firstScreenImageView: UIImageView!
    @IBOutlet weak var firstScreenLabel: UILabel!
    @IBOutlet weak var firstScreenImageViewRight: UIImageView!
    @IBOutlet weak var firstScreenInstructionLabel: UILabel!
    @IBOutlet weak var firstScreenDecisionButton: UIButton!
    @IBOutlet weak var firstScreenBasicCategoryTableView: UITableView!
    
    
//Basic Category tableview and tableviewcell
    let basicCategoryArray: [String] = ["Home", "Work", "Today", "Shopping", "Ideas", "Study", "Projects", "Hobby", "Movies", "Books", "Move", "Birthdays", "Groceries"]
    
    let categoryColor: UIColor = UIColor(red: 239/255, green: 247/255, blue: 246/255, alpha: 0.5)
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return basicCategoryArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BasicCategoryTableViewCell", for: indexPath) as! BasicCategoryTableViewCell
        cell.firstScreenCategoryButton.setTitle("\(basicCategoryArray[indexPath.row])", for: .normal)
        cell.firstScreenCategoryButton.backgroundColor = UIColor(red: 239/255, green: 247/255, blue: 246/255, alpha: 0.5)
        //rgb(239,247,246)
        cell.firstScreenCategoryButton.setTitleColor(.black, for: .normal)
        cell.firstScreenCategoryButton.layer.cornerRadius = 10
        cell.firstScreenCategoryButton.layer.borderWidth = 1
        cell.firstScreenCategoryButton.layer.borderColor = categoryColor.cgColor
        cell.firstScreenCategoryButton.clipsToBounds = true
        cell.firstScreenCategoryButton.titleLabel?.font = UIFont(name: "Gill Sans", size: 22)
        cell.firstScreenCategoryButton.frame.size.height = 40
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    //Dark mode correspondence
        overrideUserInterfaceStyle = .light        
        
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
        firstScreenDecisionButton.frame.size.height = 40
        
        firstScreenBasicCategoryTableView.delegate = self
        firstScreenBasicCategoryTableView.dataSource = self
        firstScreenBasicCategoryTableView.separatorStyle = .none
        
        
    }


}

