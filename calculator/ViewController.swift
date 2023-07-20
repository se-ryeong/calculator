//
//  ViewController.swift
//  calculator
//
//  Created by t2023-m0062 on 2023/07/19.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var display: UILabel!
    var op: String?
    var num1 = ""
    var num2 = ""
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func touchpad(_ sender:
                            UIButton) {
        guard let number = sender.titleLabel?.text else {
            return()
        }
        num1 += number
        print(num1)
        display.text = num1
    }
    
    @IBAction func clear(_ sender: UIButton) {
        num1 = ""           // num1에 아무 값도 넣어주지 않음
        display.text = "0" // 화면에는 0값이 보이게 함.
    }
    
    @IBAction func plus(_ sender: UIButton) {
        op = "+"
        num2 = num1 //num1의 값을 num2에 넣고
        num1 = "" //num1을 빈 배열로 만든다.
    }
    
    @IBAction func minus(_ sender: UIButton) {
        op = "-"
        num2 = num1
        num1 = ""
    }
    
    @IBAction func multiply(_ sender: UIButton) {
        op = "*"
        num2 = num1
        num1 = ""
    }
    
    @IBAction func div(_ sender: UIButton) {
        op = "/"
        num2 = num1
        num1 = ""
    }
    
    @IBAction func mod(_ sender: UIButton) {
        op = "%"
        num2 = num1
        num1 = ""
    }
    
    @IBAction func equal(_ sender: UIButton) {
        let calculator = Calculator() //클래스를 인스턴스화 함
        guard let op else { return }  //옵셔널 바인딩
        
        //calculate의 switch문에서 계산한 값을 상수 ans로 받고
        let ans = calculator.calculate(oper: op, firstNum: num1, secondNum: num2)
        num1 = String(ans) //ans를 string으로 변환
        self.display.text = num1
    }
    
}

