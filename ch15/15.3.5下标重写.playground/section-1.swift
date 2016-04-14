//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//

class DoubleDimensionalArray {
    
    let rows: Int, columns: Int
    var grid: [Int]
    
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(count: rows * columns, repeatedValue: 0)
    }
    
    subscript(row: Int, col: Int) -> Int {
        
        get {
            return grid[(row * columns) + col]
        }
        
        set {
            grid[(row * columns) + col] = newValue
        }
    }
    
}

class SquareMatrix : DoubleDimensionalArray {
    
    override subscript(row: Int, col: Int) -> Int {
        
        get {
            return super.grid[(row * columns) + col]
        }
        
        set {
            super.grid[(row * columns) + col] = newValue * newValue
        }
    }
}

var ary2 = SquareMatrix(rows: 5, columns: 5)

for var i = 0; i < 5; i++ {
    for var j = 0; j < 5; j++ {
        ary2[i,j] = i + j
    }
}

for var i = 0; i < 5; i++ {
    for var j = 0; j < 5; j++ {
        print("\t\t \(ary2[i,j])")
    }
    print("\n")
}
