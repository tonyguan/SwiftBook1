//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

extension String {
    
    subscript(index: Int) -> String {
        
        if  index >= self.characters.count {
            return ""
        }
        var c: String = ""
        var i = 0
        
        for character in self.characters {
            if (i == index) {
                c = String(character)
                break
            }
            i++
        }
        return c
    }
}

let s = "The quick brown fox jumps over the lazy dog"

print(s[0])

print("ABC"[2])
