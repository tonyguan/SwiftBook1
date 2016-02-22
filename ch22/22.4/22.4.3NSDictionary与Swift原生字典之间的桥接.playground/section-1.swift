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

let keyString: NSString = "one two three four five"
let keys = keyString.componentsSeparatedByString(" ")

let valueString: NSString = "alpha bravo charlie delta echo"
let values = valueString.componentsSeparatedByString(" ")

let foundationDict = NSDictionary(objects:values, forKeys:keys)

let swiftDict: [String : String] = foundationDict as! [String : String]

print(swiftDict.description)

let value = swiftDict["three"]
print("three = \(value!)")

for (key, value) in swiftDict {
    print("\(key) - \(value)")
}

let dict: NSDictionary = swiftDict
