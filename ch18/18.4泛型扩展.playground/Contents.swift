//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

//==========泛型队列==============
struct Queue<T> {
    
    var items = [T]()
    
    mutating func queue(item: T) {
        items.append(item)
    }
    
    mutating func dequeue() -> T? {
        if items.isEmpty {
            return nil
        } else {
            return items.removeAtIndex(0)
        }
    }
}

//==========泛型扩展==============
extension Queue {
    func peek(position: Int) -> T? {
        if position < 0 || position > items.count {
            return nil
        } else {
            return items[position]
        }
    }
}

var genericDoubleQueue = Queue<Double>()
genericDoubleQueue.queue(3.26)
genericDoubleQueue.queue(8.86)
genericDoubleQueue.queue(1.99)
genericDoubleQueue.queue(7.68)

print(genericDoubleQueue.peek(2)!)

