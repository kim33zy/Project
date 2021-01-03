//
//  ViewController.swift
//  toDoTask
//
//  Created by Kim Kyung Dong on 1/1/21.
//

import UIKit
import SnapKit

class firstScreenViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
// First Screen Items - Right Image, Left Image, Center Label, Instruction Label, Table View(Category), Decision Button

    
//category lsit
    var categoryListArray: [String] = ["Home", "Work", "Projects", "Study", "Shopping", "Ideas", "Groceries", "Today" ]
//right top image
    let rightImageView: UIImageView = {
        let rightImage = UIImageView()
        rightImage.image = UIImage(named: "rightImage")
        rightImage.contentMode = .scaleToFill
        return rightImage
    }()
    
//center top label
    let topLabel: UILabel = {
       let centerLabel = UILabel()
        centerLabel.text = "Hello"
        centerLabel.textAlignment = .center
        centerLabel.font = UIFont(name: "Gill Sans", size: 35)
        return centerLabel
    }()
    
//left top image
    let leftImageView: UIImageView = {
        let leftImage = UIImageView()
        leftImage.image = UIImage(named: "leftImage")
        leftImage.contentMode = .scaleToFill
        return leftImage
    }()

//instruction Label
    let middleLabel: UILabel = {
        let instructionLabel = UILabel()
        instructionLabel.text = "Choose up to 5 lists. You can change them and add more later."
        instructionLabel.textAlignment = .center
        instructionLabel.textColor = .darkGray
        instructionLabel.lineBreakMode = .byWordWrapping
        instructionLabel.numberOfLines = 0
        instructionLabel.font = UIFont(name: "Gill Sans", size: 22)
        return instructionLabel
    }()
    
//decision button
    let decideButton: UIButton = {
        let decisionButton = UIButton()
        decisionButton.setTitle("Done", for: .normal)
        decisionButton.backgroundColor = .black
        decisionButton.titleLabel?.textAlignment = .center
        decisionButton.titleLabel?.textColor = .white
        decisionButton.layer.cornerRadius = 10
        decisionButton.layer.masksToBounds = true
        decisionButton.titleLabel?.font = UIFont(name: "Gill Sans", size: 22)
        return decisionButton
    }()
    
//Category Table View
    let categoryTable: UITableView = {
        let categoryTableView = UITableView()
        categoryTableView.rowHeight = 65
        categoryTableView.separatorStyle = .none
        return categoryTableView
    }()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        overrideUserInterfaceStyle = .light
        
        setup()
        setupConstraints()
        
    }
    
    
//Item Design Code
    func setup() {
        view.backgroundColor = .white
        
    }
    
//Item constraints Code
    func setupConstraints() {
        view.addSubview(topLabel)
        topLabel.snp.makeConstraints{ (make) in
            make.width.equalTo(80)
            make.height.equalTo(50)
            make.centerY.equalTo(150)
            make.centerX.equalTo(self.view)
  }
        view.addSubview(rightImageView)
        rightImageView.snp.makeConstraints{ (make) in
            make.size.equalTo(60)
            make.centerY.equalTo(topLabel)
            make.right.equalTo(topLabel.snp.left).offset(-5)
  }
   
        view.addSubview(leftImageView)
        leftImageView.snp.makeConstraints{ (make) in
            make.size.equalTo(60)
            make.centerY.equalTo(topLabel)
            make.left.equalTo(topLabel.snp.right).offset(5)
}
        view.addSubview(middleLabel)
        middleLabel.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.view)
            make.width.equalTo(300)
            make.top.equalTo(topLabel.snp.bottom).offset(30)
}
        categoryTable.delegate = self
        categoryTable.dataSource = self
        categoryTable.register(CategoryCell.self, forCellReuseIdentifier: CategoryCell.categoryCell)
        self.view.addSubview(categoryTable)
        categoryTable.snp.makeConstraints{ (make) in
            make.top.equalTo(middleLabel.snp.bottom).offset(15)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.bottomMargin.equalTo(-100)

}
        view.addSubview(decideButton)
        decideButton.snp.makeConstraints{ (make) in
            make.top.equalTo(categoryTable.snp.bottom).offset(15)
            make.right.equalTo(-80)
            make.left.equalTo(80)
            make.height.equalTo(45)
}
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryListArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = categoryTable.dequeueReusableCell(withIdentifier: CategoryCell.categoryCell, for: indexPath) as! CategoryCell
        cell.basicCategoryLabel.text = categoryListArray[indexPath.row]
        return cell
    }
    
}


class CategoryCell: UITableViewCell {
    
    static var categoryCell = "cell"
    
    lazy var basicCategoryLabel: UILabel = {
        let categoryLabel = UILabel()
        categoryLabel.backgroundColor = UIColor(red: 239/255, green: 247/255, blue: 246/255, alpha: 1)
        categoryLabel.layer.cornerRadius = 10
        categoryLabel.layer.masksToBounds = true
        categoryLabel.textAlignment = .center
        categoryLabel.font = UIFont(name: "Gill Sans", size: 22)
        return categoryLabel
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addSubview(basicCategoryLabel)
        basicCategoryLabel.snp.makeConstraints{ (make) in
            make.right.equalTo(-80)
            make.left.equalTo(80)
            make.top.equalTo(10)
            make.bottom.equalTo(-10)
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}



