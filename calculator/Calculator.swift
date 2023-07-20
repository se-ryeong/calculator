//
//  Calculator.swift
//  calculator
//
//  Created by t2023-m0062 on 2023/07/20.
//

import Foundation

class Calculator {
    let addOperation = AddOperation()
    let substractOperation = SubstractOperation()
    let multiplyOperation = MultiplyOperation()
    let divideOperation = DivideOperation()
    
    func calculate(oper: String, firstNum: String, secondNum: String ) -> Double {
        let num1Double = Double(firstNum)
        let num2Double = Double(secondNum) //num1Double, num2Double이 옵셔널 값
        
        //num1Double, num2Double을 옵셔널 바인딩
        guard let num1Double = num1Double, let num2Double = num2Double else {
            return 0
        }
        
        switch oper {
        case "+":
            // AddOperation()
            return addOperation.add(a: num1Double, b: num2Double)
            
        case "-":
            return substractOperation.subtract(a: num1Double, b: num2Double)
            
        case "*":
            return multiplyOperation.multiply(a: num1Double, b: num2Double)
            
        case "/":
            return divideOperation.div(a: num1Double, b: num2Double)
            
        case "%":
            let mod =  num2Double.truncatingRemainder(dividingBy:num1Double)
            return mod
            
        default:
            print("defualt")
            return 0
        }
    }
}
