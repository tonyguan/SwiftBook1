//
//  ViewController.swift
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

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    
    var logic : CalcLogic!

    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.text = "0"
        logic = CalcLogic()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        logic = nil
    }
    
    @IBAction func operandPressed(sender: AnyObject) {
        let btn : UIButton = sender as! UIButton
        mainLabel.text = logic.calculate(mainLabel.text!, buttonTag: btn.tag)
    }
    
    @IBAction func equalsPressed(sender: AnyObject) {
        let btn : UIButton = sender as! UIButton
        mainLabel.text = logic.calculate(mainLabel.text!, buttonTag: btn.tag)
    }
    
    @IBAction func clearPressed(sender: AnyObject) {
        mainLabel.text = "0"
        logic.clear()
    }

    @IBAction func decimalPressed(sender: AnyObject) {
        if logic.isStringContainDecimal(mainLabel.text!) == false {
            let string = mainLabel.text! + "."
            mainLabel.text = string
        }
    }

    @IBAction func numberButtonPressed(sender: AnyObject) {
        let btn : UIButton = sender as! UIButton
        mainLabel.text =  logic.updateMainLabelString(mainLabel.text!, buttonTag: btn.tag)
    }
}

