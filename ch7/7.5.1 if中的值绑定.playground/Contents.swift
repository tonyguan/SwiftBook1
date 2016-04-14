//  Created by 关东升 on 2016-2-18.
//  本书网站：http://www.51work6.com
//  智捷课堂在线课堂：http://www.zhijieketang.com/
//  智捷课堂微信公共号：zhijieketang
//  作者微博：@tony_关东升
//  作者微信：tony关东升
//  QQ：569418560 邮箱：eorient@sina.com
//  QQ交流群：162030268
//


//定义一个Blog(博客)结构体
struct Blog {
    let name: String?
    let URL: String?
    let Author: String?
}

func ifStyleBlog(blog: Blog) {
    
    if let blogName = blog.name,
        let blogURL = blog.URL,
        let blogAuthor = blog.Author {
        
        print("这篇博客名：\(blogName)")
        print("这篇博客由\(blogAuthor)写的")
        print("这篇博客网址：\(blogURL)")
        
    } else {
        print("这篇博客信息不完整!")
    }
}

let blog1 = Blog(name: nil, URL: "51work6.com", Author: "Tom")
let blog2 = Blog(name: "Tony'Blog", URL: "51work6.com", Author: "Tony")

print("--blog1--")
ifStyleBlog(blog1)
print("--blog2--")
ifStyleBlog(blog2)
