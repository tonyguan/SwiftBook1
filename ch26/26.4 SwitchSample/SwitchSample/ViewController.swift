//
//  ViewController.swift
//  SwitchSample
//
//  Created by 关东升 on 15/9/13.
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

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func switchValueChanged(sender: AnyObject) {
        
        let witchSwitch = sender as! UISwitch
        if witchSwitch.on {
            label.text = "开"
        } else {
            label.text = "关"
        }
        
    }
}

