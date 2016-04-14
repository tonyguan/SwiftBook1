//
//  ViewController.swift
//  SimpleTable
//
//  Created by 关东升 on 15/9/14.
//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

import UIKit

class ViewController: UITableViewController {
    
    
    var listTeams: [[String: String]]!//数组中套字典[String: String]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let plistPath = NSBundle.mainBundle().pathForResource("team", ofType: "plist")
        //获取属性列表文件中的全部数据
        self.listTeams =  NSArray(contentsOfFile: plistPath!) as? [[String: String]]
        
        self.title = "球队列表"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //UITableViewDataSource 协议方法
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.listTeams.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cellIdentifier = "CellIdentifier"

        var cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier)
        
        if cell == nil {
            cell = UITableViewCell(style: .Default, reuseIdentifier:cellIdentifier)
        }
        
        let row = indexPath.row
        let rowDict = self.listTeams[row]
        
        cell!.textLabel?.text = rowDict["name"]
        
        let imagePath = String(format: "%@.png", rowDict["image"]!)
        cell!.imageView?.image = UIImage(named: imagePath)
        
        cell!.accessoryType = .DisclosureIndicator
        
        return cell!
    }
    
    //UITableViewDelegate 协议方法
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let row = indexPath.row
        let rowDict = self.listTeams[row]
        
        let name = rowDict["name"]
        NSLog("选择球队是： %@", name!)
        
    }
}

