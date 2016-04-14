//
//  main.swift
//  HelloWorld
//
//  Created by 关东升 on 15/10/14.
//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

import Foundation

//自定义错误类型
enum DAOError: ErrorType {
    case NoData
    case PrimaryKeyNull
}

//保存数据列表
var listData = [Note]()


//删除Note方法
func remove(model: Note) throws {
    
    guard let date = model.date else {
        //抛出"主键为空"错误
        throw DAOError.PrimaryKeyNull
    }
    //比较日期主键是否相等
    for (index, note) in listData.enumerate() where note.date == date {
        listData.removeAtIndex(index)
    }
}

//查询所有数据方法
func findAll() throws -> [Note] {
    
    guard listData.count > 0 else {
        //抛出"没有数据"错误。
        throw DAOError.NoData
    }
    return listData
}

func printNotes() throws {
    
    let datas  = try findAll()
    for note in datas {
        print("date : \(note.date!) - content: \(note.content!)")
    }
}

try printNotes()
