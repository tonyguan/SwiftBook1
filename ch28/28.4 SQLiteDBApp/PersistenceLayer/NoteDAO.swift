//
//  NoteDAO.swift
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

import Foundation

import sqlite3

//自定义数据访问错误类型
enum DAOError: ErrorType {
    case DBOpenFailure      //数据库打开失败
    case TableCreateFailure //数据表创建失败
    case DataInsertFailure  //数据插入失败
    case DataSelectFailure  //数据查询失败
    case DataDeleteFailure  //数据删除失败
    case DataUpdateFailure  //数据更新失败
}

public class NoteDAO {
    
    let dbFileName = "NotesList.sqlite3"
    
    var db:COpaquePointer = nil //sqlite3 *db
    
    let dateFormatter = NSDateFormatter()
    
    public init() throws {
        print("构造NoteDAO...")
        
        try self.createDatabase()
        
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
    }
    
    //创建数据库
    private func createDatabase() throws {
        
        let path = self.applicationDocumentsDirectoryFile()
        let cpath = path.cStringUsingEncoding(NSUTF8StringEncoding)
        
        if sqlite3_open(cpath!, &db) != SQLITE_OK {
            //数据库打开失败。
            throw DAOError.DBOpenFailure
        } else {
            let sql = "CREATE TABLE IF NOT EXISTS Note (cdate TEXT PRI关东升 KEY, content TEXT)"
            let cSql = sql.cStringUsingEncoding(NSUTF8StringEncoding)
            
            if (sqlite3_exec(db,cSql!, nil, nil, nil) != SQLITE_OK) {
                //建表失败。
                throw DAOError.TableCreateFailure
            }
        }
        defer {
            print("关闭数据库")
            sqlite3_close(db)
        }
    }
    
    //插入Note方法
    public func create(model: Note) throws -> Int {
        
        let path = self.applicationDocumentsDirectoryFile()
        let cpath = path.cStringUsingEncoding(NSUTF8StringEncoding)
        
        var statement:COpaquePointer = nil
        
        if (sqlite3_open(cpath!, &db) != SQLITE_OK) {
            //数据库打开失败。
            throw DAOError.DBOpenFailure
        } else {
            let sql = "INSERT OR REPLACE INTO note (cdate, content) VALUES (?,?)"
            let cSql = sql.cStringUsingEncoding(NSUTF8StringEncoding)
            //预处理过程
            if sqlite3_prepare_v2(db, cSql!, -1, &statement, nil) == SQLITE_OK {
                
                let strDate = dateFormatter.stringFromDate(model.date!)
                let cDate = strDate.cStringUsingEncoding(NSUTF8StringEncoding)
                
                let cContent = model.content!.cStringUsingEncoding(NSUTF8StringEncoding)
                
                //绑定参数开始
                sqlite3_bind_text(statement, 1, cDate!, -1, nil)
                sqlite3_bind_text(statement, 2, cContent!, -1, nil)
                
                //执行插入
                if (sqlite3_step(statement) != SQLITE_DONE) {
                    //插入数据失败。
                    throw DAOError.DataInsertFailure
                }
            }
        }
        
        defer {
            print("释放语句对象")
            sqlite3_finalize(statement)
        }
        
        defer {
            print("关闭数据库")
            sqlite3_close(db)
        }
        
        return 0
    }
    
    //查询所有数据方法
    public func findAll() throws -> [Note] {
        
        var listData = [Note]()
        
        let path = self.applicationDocumentsDirectoryFile()
        let cpath = path.cStringUsingEncoding(NSUTF8StringEncoding)
        
        var statement:COpaquePointer = nil
        
        if (sqlite3_open(cpath!, &db) != SQLITE_OK) {
            //数据库打开失败。
            throw DAOError.DBOpenFailure
        } else {
            let sql = "SELECT cdate,content FROM Note"
            let cSql = sql.cStringUsingEncoding(NSUTF8StringEncoding)
            //预处理过程
            if sqlite3_prepare_v2(db, cSql!, -1, &statement, nil) == SQLITE_OK {
                
                //执行
                while (sqlite3_step(statement) == SQLITE_ROW) {
                    
                    let bufDate = UnsafePointer<Int8>(sqlite3_column_text(statement, 0))
                    let strDate = String.fromCString(bufDate)!
                    let date : NSDate = dateFormatter.dateFromString(strDate)!
                    
                    let bufContent = UnsafePointer<Int8>(sqlite3_column_text(statement, 1))
                    let strContent = String.fromCString(bufContent)!
                    
                    let note = Note(date: date, content:strContent)
                    
                    listData.append(note)
                }
            }
        }
        
        defer {
            print("关闭数据库")
            sqlite3_close(db)
        }
        defer {
            print("释放语句对象")
            sqlite3_finalize(statement)
        }
        
        return listData
    }
    
    //获得数据库文件路径
    private func applicationDocumentsDirectoryFile() ->String {
        let  documentDirectory: NSArray = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)
        let path = documentDirectory[0].stringByAppendingPathComponent(dbFileName) as String
        NSLog("path : %@", path)
        return path
    }
    
}