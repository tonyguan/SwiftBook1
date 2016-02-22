//
//  Created by 关东升 on 2016-2-18.
//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//




import Foundation

var str1: NSString = "Objective C"
var search: NSString
var replace: NSString

var mstr: NSMutableString
var subRange: NSRange

//从不可变的字符创建可变字符串对象
mstr = NSMutableString(string: str1)
NSLog(" %@", mstr)
//输出： Objective C

//插入字符串
mstr.insertString(" Java", atIndex: 9)
NSLog(" %@", mstr)
//输出： Objective Java C

//具有连接效果的插入字符串
mstr.insertString(" and C++", atIndex: mstr.length)
NSLog(" %@", mstr)
//输出： Objective Java C and C++

//字符串连接方法
mstr.appendString(" and C")
NSLog(" %@", mstr)
//输出： Objective Java C and C++ and C

//使用NSRange删除字符串
mstr.deleteCharactersInRange(NSMakeRange(16, 13))
NSLog(" %@", mstr)
//输出： Objective Java CC

//查找字符串位置
subRange = mstr.rangeOfString("string B and")
if subRange.location != NSNotFound {
    mstr.deleteCharactersInRange(subRange)
    NSLog(" %@", mstr)
}

//直接设置可变字符串
mstr.setString("This is string A ")
NSLog(" %@", mstr)
//输出： This is string A

mstr.replaceCharactersInRange(NSMakeRange(8, 8), withString: "a mutable string ")
NSLog(" %@", mstr)
//输出： This is a mutable string

//查找和替换
search = "This is "
replace = "An example of "

subRange = mstr.rangeOfString(search as String)

if subRange.location != NSNotFound {
    mstr.replaceCharactersInRange(subRange, withString: replace as String)
    NSLog(" %@", mstr)
    //输出： An example of a mutable string
}

//查找和替换所有的情况
search = "a"
replace = "X"
subRange = mstr.rangeOfString(search as String)

while subRange.location != NSNotFound {
    mstr.replaceCharactersInRange(subRange, withString: replace as String)
    subRange = mstr.rangeOfString(search as String)
}
NSLog(" %@", mstr)
//输出： An exXmple of X mutXble string
