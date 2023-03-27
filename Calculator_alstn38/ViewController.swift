//
//  ViewController.swift
//  Calculator_alstn38
//
//  Created by 강민수 on 2023/03/25.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private let ansView : UIView = {
        let view = UIView()
        
        view.backgroundColor = .black
        
        return view
    }()
    
    private let ansLabel : UILabel = {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 70, weight: .bold)
        label.textColor = .white
        label.textAlignment = .right
        label.text = "0"
        label.numberOfLines = 1
        
        return label
    }()

    private let zeroButton : UIButton = {
        let button = UIButton()
        
        button.setTitle("0", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 30
        button.backgroundColor = .darkGray
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 50)
        button.tag = 0
        
        return button
    }()
    
    private let oneButton : UIButton = {
        let button = UIButton()
        
        button.setTitle("1", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 30
        button.backgroundColor = .darkGray
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 50)
        button.tag = 1
        
        return button
    }()
    
    private let twoButton : UIButton = {
        let button = UIButton()
        
        button.setTitle("2", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 30
        button.backgroundColor = .darkGray
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 50)
        button.tag = 2
        
        return button
    }()
    
    private let threeButton : UIButton = {
        let button = UIButton()
        
        button.setTitle("3", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 30
        button.backgroundColor = .darkGray
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 50)
        button.tag = 3
        
        return button
    }()
    
    private let fourButton : UIButton = {
        let button = UIButton()
        
        button.setTitle("4", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 30
        button.backgroundColor = .darkGray
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 50)
        button.tag = 4
        
        return button
    }()
    
    private let fiveButton : UIButton = {
        let button = UIButton()
        
        button.setTitle("5", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 30
        button.backgroundColor = .darkGray
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 50)
        button.tag = 5
        
        return button
    }()
    
    private let sixButton : UIButton = {
        let button = UIButton()
        
        button.setTitle("6", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 30
        button.backgroundColor = .darkGray
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 50)
        button.tag = 6
        
        return button
    }()
    
    private let sevenButton : UIButton = {
        let button = UIButton()
        
        button.setTitle("7", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 30
        button.backgroundColor = .darkGray
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 50)
        button.tag = 7
        
        return button
    }()
    
    private let eightButton : UIButton = {
        let button = UIButton()
        
        button.setTitle("8", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 30
        button.backgroundColor = .darkGray
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 50)
        button.tag = 8
        
        return button
    }()
    
    private let nineButton : UIButton = {
        let button = UIButton()
        
        button.setTitle("9", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 30
        button.backgroundColor = .darkGray
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 50)
        button.tag = 9
        
        return button
    }()
    
    private let dotButton : UIButton = {
        let button = UIButton()
        
        button.setTitle(".", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 30
        button.backgroundColor = .darkGray
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 50)
        button.tag = 10
        
        return button
    }()
    
    private let acButton : UIButton = {
        let button = UIButton()
        
        button.setTitle("AC", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 30
        button.backgroundColor = .lightGray
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 50)
        button.tag = 11
        
        return button
    }()
    
    private let plusminusButton : UIButton = {
        let button = UIButton()
        
        button.setTitle("+/-", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 30
        button.backgroundColor = .lightGray
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 50)
        button.tag = 12
        
        return button
    }()
    
    private let percentButton : UIButton = {
        let button = UIButton()
        
        button.setTitle("%", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 30
        button.backgroundColor = .lightGray
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 50)
        button.tag = 13
        
        return button
    }()
    
    private let divButton : UIButton = {
        let button = UIButton()
        
        button.setTitle("/", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 30
        button.backgroundColor = .orange
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 50)
        button.tag = 14
        
        return button
    }()
    
    private let mulButton : UIButton = {
        let button = UIButton()
        
        button.setTitle("X", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 30
        button.backgroundColor = .orange
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 50)
        button.tag = 15
        
        return button
    }()
    
    private let minusButton : UIButton = {
        let button = UIButton()
        
        button.setTitle("-", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 30
        button.backgroundColor = .orange
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 50)
        button.tag = 16
        
        return button
    }()
    
    private let plusButton : UIButton = {
        let button = UIButton()
        
        button.setTitle("+", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 30
        button.backgroundColor = .orange
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 50)
        button.tag = 17
        
        return button
    }()
    
    private let equalButton : UIButton = {
        let button = UIButton()
        
        button.setTitle("=", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 30
        button.backgroundColor = .orange
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 50)
        button.tag = 18
        
        return button
    }()
    
    private let stackStackView : UIStackView = {
       let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        
        return stackView
    }()
    
    private let stackView1 : UIStackView = {
       let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        
        return stackView
    }()
    
    private let stackView1_2 : UIStackView = {
       let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        
        return stackView
    }()
    
    private let stackView2 : UIStackView = {
       let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        
        return stackView
    }()
    
    private let stackView3 : UIStackView = {
       let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        
        return stackView
    }()
    
    private let stackView4 : UIStackView = {
       let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        
        return stackView
    }()
    
    private let stackView5 : UIStackView = {
       let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        
        return stackView
    }()
    
    override func viewDidLoad() {
        self.view.backgroundColor = .black
        setupAddView()
        setupLayoutView()
        setupStackView()
        setupAddTarget()
    }
    
    func setupAddView() {
        self.view.addSubview(ansView)
        self.view.addSubview(stackStackView)
        
        ansView.addSubview(ansLabel)
        
        stackStackView.addArrangedSubview(stackView5)
        stackStackView.addArrangedSubview(stackView4)
        stackStackView.addArrangedSubview(stackView3)
        stackStackView.addArrangedSubview(stackView2)
        stackStackView.addArrangedSubview(stackView1)
    }
    
    func setupLayoutView() {
        
        ansView.snp.makeConstraints{ make in
            make.top.equalTo(self.view.snp.top)
            make.width.equalTo(self.view.snp.width)
            make.height.equalTo(300)
        }
        
        ansLabel.snp.makeConstraints{ make in
            make.trailing.equalTo(ansView.snp.trailing).offset(-10)
            make.bottom.equalTo(ansView.snp.bottom).offset(-10)
        }
        
        stackStackView.snp.makeConstraints{ make in
            make.top.equalTo(ansView.snp.bottom)
            make.width.equalTo(self.view.snp.width)
            make.bottom.equalTo(self.view.snp.bottomMargin)
        }
        
    }
    
    func setupStackView() {
        stackView5.addArrangedSubview(acButton)
        stackView5.addArrangedSubview(plusminusButton)
        stackView5.addArrangedSubview(percentButton)
        stackView5.addArrangedSubview(divButton)
        
        stackView4.addArrangedSubview(sevenButton)
        stackView4.addArrangedSubview(eightButton)
        stackView4.addArrangedSubview(nineButton)
        stackView4.addArrangedSubview(mulButton)
        
        stackView3.addArrangedSubview(fourButton)
        stackView3.addArrangedSubview(fiveButton)
        stackView3.addArrangedSubview(sixButton)
        stackView3.addArrangedSubview(minusButton)
        
        stackView2.addArrangedSubview(oneButton)
        stackView2.addArrangedSubview(twoButton)
        stackView2.addArrangedSubview(threeButton)
        stackView2.addArrangedSubview(plusButton)
        
        stackView1.addArrangedSubview(zeroButton)
        stackView1.addArrangedSubview(stackView1_2)
        
        stackView1_2.addArrangedSubview(dotButton)
        stackView1_2.addArrangedSubview(equalButton)
    }

    func setupAddTarget() {
        zeroButton.addTarget(self, action: #selector(buttonClicked(_:)), for: .touchUpInside)
        oneButton.addTarget(self, action: #selector(buttonClicked(_:)), for: .touchUpInside)
        twoButton.addTarget(self, action: #selector(buttonClicked(_:)), for: .touchUpInside)
        threeButton.addTarget(self, action: #selector(buttonClicked(_:)), for: .touchUpInside)
        fourButton.addTarget(self, action: #selector(buttonClicked(_:)), for: .touchUpInside)
        fiveButton.addTarget(self, action: #selector(buttonClicked(_:)), for: .touchUpInside)
        sixButton.addTarget(self, action: #selector(buttonClicked(_:)), for: .touchUpInside)
        sevenButton.addTarget(self, action: #selector(buttonClicked(_:)), for: .touchUpInside)
        eightButton.addTarget(self, action: #selector(buttonClicked(_:)), for: .touchUpInside)
        nineButton.addTarget(self, action: #selector(buttonClicked(_:)), for: .touchUpInside)
        dotButton.addTarget(self, action: #selector(buttonClicked(_:)), for: .touchUpInside)
        acButton.addTarget(self, action: #selector(buttonClicked(_:)), for: .touchUpInside)
        plusminusButton.addTarget(self, action: #selector(buttonClicked(_:)), for: .touchUpInside)
        percentButton.addTarget(self, action: #selector(buttonClicked(_:)), for: .touchUpInside)
        divButton.addTarget(self, action: #selector(buttonClicked(_:)), for: .touchUpInside)
        mulButton.addTarget(self, action: #selector(buttonClicked(_:)), for: .touchUpInside)
        minusButton.addTarget(self, action: #selector(buttonClicked(_:)), for: .touchUpInside)
        plusButton.addTarget(self, action: #selector(buttonClicked(_:)), for: .touchUpInside)
        equalButton.addTarget(self, action: #selector(buttonClicked(_:)), for: .touchUpInside)
        
    }
    
    @objc func buttonClicked(_ sender: UIButton) {
        if sender.tag == 0 {
            // 버튼 1이 클릭되었을 때 동작할 코드 작성
        } else if sender.tag == 1 {
            
        } else if sender.tag == 2 {
            
        } else if sender.tag == 3 {
            
        } else if sender.tag == 4 {
            
        } else if sender.tag == 5 {
            
        } else if sender.tag == 6 {
            
        } else if sender.tag == 7 {
            
        } else if sender.tag == 8 {
            
        } else if sender.tag == 9 {
            
        } else if sender.tag == 10 {
            
        } else if sender.tag == 11 {
            
        } else if sender.tag == 12 {
            
        } else if sender.tag == 13 {
            
        } else if sender.tag == 14 {
            
        } else if sender.tag == 15 {
            
        } else if sender.tag == 16 {
            
        } else if sender.tag == 17 {
            
        } else if sender.tag == 18 {
            
        }
    }
}

