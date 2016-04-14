//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//


struct DoubleDimensionalArray {
    
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
        
        set (newValue1){
            grid[(row * columns) + col] = newValue1
        }
    }
    
}

let COL_NUM = 10
let ROW_NUM = 10

var ary2 = DoubleDimensionalArray(rows: ROW_NUM, columns: COL_NUM)

for var i = 0; i < ROW_NUM; i++ {
    for var j = 0; j < COL_NUM; j++ {
        ary2[i,j] = i * j
    }
}

for var i = 0; i < ROW_NUM; i++ {
    for var j = 0; j < COL_NUM; j++ {
        print("\t \(ary2[i,j])", terminator: "")
    }
    print("\n")
}
