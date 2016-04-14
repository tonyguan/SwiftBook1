//
//  CalcLogic.swift
//  Calculator
//
//  Created by 关东升 on 15/9/15.
//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

import Foundation

enum Operator: Int {
    case Plus = 200, Minus, Multiply, Divide
    case Default = 0
}

class CalcLogic {

    //保存上一次值
    var lastRetainValue: Double
    //最近一次选择的操作符（加、减、乘、除）
    var opr: Operator
    //临时保存MainLabel内容，为true时候，输入数字MainLabel内容被清为0
    var isMainLabelTextTemporary: Bool

    /*
    * 构造器
    */
    init() {
        print("CalcLogic init")
        lastRetainValue = 0.0
        isMainLabelTextTemporary = false
        opr = .Default
    }

    /*
    * 析构器
    */
    deinit {
        print("CalcLogic deinit")
    }

    /*
    * 更新主标签内容
    */
    func updateMainLabelString(aString: String, buttonTag tag: Int) -> String {

        var string = aString

        if (isMainLabelTextTemporary) {
            string = "0"
            isMainLabelTextTemporary = false
        }

        let optNumber = tag - 100
        //把String转为double
        let mainLabelDouble = (string as NSString).doubleValue

        if mainLabelDouble == 0 && !isStringContainDecimal(string) {
            return String(optNumber)
        }
        let resultString = string + String(optNumber)

        return resultString
    }


    /*
    * 判断是否字符串中包含小数点
    */
    func isStringContainDecimal(aString: String) -> Bool {
        for ch in aString.characters {
            if ch == "." {
                return true
            }
        }
        return false
    }

    /*
    * 点击操作符时候的计算
    */
    func calculate(aString: String, buttonTag tag: Int) -> String {

        //把String转为为double
        let currentValue = (aString as NSString).doubleValue

        switch opr {
        case .Plus:
            lastRetainValue += currentValue
        case .Minus:
            lastRetainValue -= currentValue
        case .Multiply:
            lastRetainValue *= currentValue
        case .Divide:
            if currentValue != 0 {
                lastRetainValue /= currentValue
            } else {
                opr = .Default
                isMainLabelTextTemporary = true
                return "错误"
            }
        default:
            lastRetainValue = currentValue
        }

        //记录当前操作符，下次计算时候使用
        opr = Operator(rawValue: tag)! //Operator.fromRaw(tag)!

        // let resultString = String(lastRetainValue)   //能够.00情况去掉
        let resultString = NSString(format: "%g", lastRetainValue)

        isMainLabelTextTemporary = true

        return resultString as String
    }

    func clear() {
        lastRetainValue = 0.0
        isMainLabelTextTemporary = false
        opr = .Default
    }
}
