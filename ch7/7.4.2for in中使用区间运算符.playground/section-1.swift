//  Created by 关东升 on 2016-2-18.
//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//


let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

let count = numbers.count
print("----半开区间----")
for i in 0..<count {
    print("第\(i + 1)个元素：\(numbers[i])")
}

print("----闭区间----")
for i in 0...5 {
    print("第\(i + 1)个元素：\(numbers[i])")
}
