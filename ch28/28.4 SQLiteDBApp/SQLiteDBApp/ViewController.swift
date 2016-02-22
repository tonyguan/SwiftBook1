//
//  ViewController.swift
//  SQLiteDBApp
//
//  Created by 关东升 on 15/9/11.
//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

import UIKit
import PersistenceLayer

class ViewController: UITableViewController {

    var listData = [Note]()
    
    var dao: NoteDAO?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let now = NSDate()
        let content = "Hello SQLite."
        
        let note = Note(date: now, content: content)
        do {
            let dao = try NoteDAO()
            //插入数据
            try dao.create(note)
            //查询所有数据
            try listData = dao.findAll()
        } catch {
            
        }
        self.title = "MyNotes"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - 实现表视图数据源协议
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listData.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let cellIdentifier = "CellIdentifier"
        var cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier)

        if cell == nil {
            cell = UITableViewCell(style: .Subtitle, reuseIdentifier: cellIdentifier)
        }
        
        let note = listData[indexPath.row] as Note
        
        cell!.textLabel!.text = note.content
        cell!.detailTextLabel!.text = note.date!.description

        return cell!
    }

}

