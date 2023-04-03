//
//  TableViewCell.swift
//  ToDoList
//
//  Created by 강민수 on 2023/04/01.
//

import UIKit
import SnapKit

class TableViewCell: UITableViewCell {

    static let reuseIdentifier = "TodoTableViewCell"
    
    let label: UILabel = {
            let label = UILabel()
            
            label.translatesAutoresizingMaskIntoConstraints = false
            label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
            label.textColor = .black
            label.textAlignment = .left
            label.numberOfLines = 1
            
            return label
        }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setConstraint()
    }
    
    func setConstraint() {
        contentView.addSubview(label)
        
        label.snp.makeConstraints { make in
            make.centerX.equalTo(self.snp.centerX)
            make.centerY.equalTo(self.snp.centerY)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
