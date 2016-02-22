//
//  ViewController.swift
//  SegmentedControlSample
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

    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "1"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func segmentedControlValueChanged(sender: AnyObject) {
        let segmentedControl = sender as! UISegmentedControl
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            label.text = "1"
        case 1:
            label.text = "2"
        case 2:
            label.text = "3"
        default:
            label.text = "1"
        }
        
    }

}

