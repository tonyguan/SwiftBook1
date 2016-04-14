//
//  NoteDAO.swift
//  MyNotes
//
//  Created by 关东升 on 2014-10-18.
//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

import Foundation

class NoteDAO {
    //保存数据列表
    private var listData = [Note]()
    
    //插入Note方法
    func create(model: Note) {
        listData.append(model)
    }
    
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
    
    //修改Note方法
    func modify(model: Note) throws {
        
        guard let date = model.date else {
            //抛出"主键为空"错误
            throw DAOError.PrimaryKeyNull
        }
        //比较日期主键是否相等
        for note in listData where note.date == date {
            note.content = model.content
        }
    }
    
    //查询所有数据方法
    func findAll() throws -> [Note] {
        
        guard listData.count > 0 else {
            //抛出"没有数据"错误。
            throw DAOError.NoData
        }
        
        defer {
            print("关闭数据库")
        }
        defer {
            print("释放语句对象")
        }
        return listData
    }
    
    //修改Note方法
    func findById(model: Note) throws -> Note? {
        
        guard let date = model.date else {
            //抛出"主键为空"错误
            throw DAOError.PrimaryKeyNull
        }
        //比较日期主键是否相等
        for note in listData where note.date == date {
            return note
        }
        return nil
    }
    
}
