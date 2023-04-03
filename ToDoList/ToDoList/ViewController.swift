//
//  ViewController.swift
//  ToDoList
//
//  Created by 강민수 on 2023/04/01.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    var todos = [
        Todo(title: "컴퓨터 구조 과제하기"),
        Todo(title: "컴퓨터 네트워크 과제하기"),
        Todo(title: "swift남들 프로젝트 하나 하기")
    ]
    
    private let titleLabel : UILabel = {
        let label = UILabel()
        
        label.text = "To Do List"
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 1
        
        return label
    }()
    
    private let plusButton : UIButton = {
        let button = UIButton()
        
        button.setImage(UIImage(systemName: "plus"), for: .normal)
        button.contentHorizontalAlignment = .center
        button.contentVerticalAlignment = .fill
        button.contentHorizontalAlignment = .fill
        
        return button
    }()
    
    private var todoTextField : UITextField = {
       let textFiled = UITextField()
        
        textFiled.borderStyle = .bezel //테두리
        textFiled.backgroundColor = .white
        textFiled.font = .systemFont(ofSize: 20)
        textFiled.textColor = .black
        textFiled.textAlignment = .left
        textFiled.placeholder = "오늘 할 일은 뭐야?"
        textFiled.keyboardType = .phonePad
        
        return textFiled
    }()
    
    private var mainTableView : UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .red
        
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainTableView.delegate = self
        mainTableView.dataSource = self
        mainTableView.register(TableViewCell.self, forCellReuseIdentifier:TableViewCell.reuseIdentifier)
        
        plusButton.addTarget(self, action: #selector(plusButtonTapped), for: .touchUpInside)
        //버튼 생성할때 넣으면 안되고 왜 여기다가 넣어야만 실행이 되는지 궁금하다.
        view.backgroundColor = .white
        
        setupView()
    }
    
    @objc func plusButtonTapped() {
        if let wantToDo = todoTextField.text, !wantToDo.isEmpty {
            todos.append(Todo(title: wantToDo))
            mainTableView.reloadData()
            todoTextField.text = ""
        }
    }

    func setupView() {
        view.addSubview(titleLabel)
        view.addSubview(plusButton)
        view.addSubview(mainTableView)
        view.addSubview(todoTextField)
        
        titleLabel.snp.makeConstraints { make in
            make.centerX.equalTo(view.snp.centerX)
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(10)
        }
        
        plusButton.snp.makeConstraints { make in
            make.trailing.equalTo(view.snp.trailing).offset(-10)
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(10)
            make.width.equalTo(25)
            make.height.equalTo(25)
        }
        
        todoTextField.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(10)
            make.centerX.equalTo(view.snp.centerX)
            make.width.equalTo(300)
        }
        
        
        mainTableView.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(50)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
            make.leading.equalTo(view.snp.leading)
            make.trailing.equalTo(view.snp.trailing)
        }
    }

}


extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let todo = todos[indexPath.row]
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reuseIdentifier, for: indexPath) as? TableViewCell else {return UITableViewCell()}
        
        cell.label.text = todo.title
        cell.backgroundColor = .yellow
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            // 데이터 소스에서 행 삭제하기
            todos.remove(at: indexPath.row)
            
            // Delete the row from the table view
            // 테이블 뷰에서 행 삭제하기
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    
}
