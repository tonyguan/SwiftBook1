//
//  main.swift
//  ErrorType
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


do {
    //try 访问数据表函数或方法
} catch DAOError.NoData {
    print("没有数据。")
} catch DAOError.PrimaryKeyNull {
    print("主键为空。")
}
