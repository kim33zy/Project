//
//  BasicScreenViewController.swift
//  toDoTask
//
//  Created by Kim Kyung Dong on 1/4/21.
//

import UIKit
import SnapKit

class BasicScreenViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let basicCategoryListArray: [String] = ["Today", "Tomorrow", "Soon" ]
    
    var inputToDo: UITextField = {
        let toDo = UITextField()
        toDo.placeholder = "   Tap to add a tas"
        toDo.layer.cornerRadius = 10
        toDo.backgroundColor = .lightGray
        toDo.layer.masksToBounds = true
        
        return toDo
    }()
    
    let basicTask: UITableView = {
        let basicTaskTable = UITableView()
        basicTaskTable.rowHeight = 65
        basicTaskTable.separatorStyle = .none
        basicTaskTable.backgroundColor = .lightGray
        return basicTaskTable
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light
        view.backgroundColor = .white
        
        view.addSubview(inputToDo)
        inputToDo.snp.makeConstraints{ (make) in
            make.topMargin.equalTo(15)
            make.height.equalTo(45)
            make.rightMargin.leftMargin.equalToSuperview().inset(30)
        }
        
        view.addSubview(basicTask)
        basicTask.snp.makeConstraints{ (make) in
            make.top.equalTo(inputToDo.snp.bottom).offset(30)
            make.height.equalTo(self.view)
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return basicCategoryListArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = basicTask.dequeueReusableCell(withIdentifier: BasicCategoryCell.basicCategoryCell, for: indexPath) as! BasicCategoryCell
        cell.basicLabel.text = basicCategoryListArray[indexPath.row]
        return cell
    }
    
    
}



class BasicCategoryCell: UITableViewCell {
    
    static var basicCategoryCell = "cell"
    
    lazy var basicLabel: UILabel = {
        let baseLabel = UILabel()
        baseLabel.backgroundColor = .lightGray
        baseLabel.layer.cornerRadius = 10
        baseLabel.layer.masksToBounds = true
        baseLabel.font = UIFont(name: "Gill Sans", size: 22)
        return baseLabel
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addSubview(basicLabel)
        basicLabel.snp.makeConstraints{ (make) in
            make.topMargin.equalTo(15)
            make.height.equalTo(45)
            make.rightMargin.leftMargin.equalToSuperview().inset(30)
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


func basicSetup() {
    
}

func basicScreenConstraints() {
    
    
    
}

