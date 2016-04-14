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

//定义一个Blog(博客)结构体
struct Blog {
    let name: String?
    let URL: String?
    let Author: String?
}

func ifStyleBlog(blog: Blog) {
    if let blogName = blog.name {
        print("博客名：\(blogName)")
    } else {
        print("这篇博客没有名字！")
    }
}

func guardStyleBlog(blog: Blog) {
    guard let blogName = blog.name else {
        print("这篇博客没有名字！")
        return
    }
    print("这篇博客名：\(blogName)")
}

func ifLongStyleBlog(blog: Blog) {
    
    if let blogName = blog.name {
        print("这篇博客名：\(blogName)")
        
        if let blogAuthor = blog.Author {
            print("这篇博客由\(blogAuthor)写的")
            
            if let blogURL = blog.URL {
                print("这篇博客网址：\(blogURL)")
            } else {
                print("这篇博客没有网址！")
            }
        } else {
            print("这篇博客没有作者！")
        }
    } else {
        print("这篇博客没有名字！")
    }
    
}


func guardLongStyleBlog(blog: Blog) {
    
    guard let blogName = blog.name else {
        print("这篇博客没有名字！")
        return
    }
    
    print("这篇博客名：\(blogName)")
    
    guard let blogAuthor = blog.Author else {
        print("这篇博客没有作者")
        return
    }
    
    print("这篇博客由\(blogAuthor)写的")
    
    guard let blogURL = blog.URL else {
        print("这篇博客没有网址！")
        return
    }
    
    print("这篇博客网址：\(blogURL)")
}


let blog1 = Blog(name: nil, URL: "51work6.com", Author: "Tom")
let blog2 = Blog(name: "Tony'Blog", URL: "51work6.com", Author: "Tony")
    
let blog3 = Blog(name: nil, URL: nil, Author: "Tom")
let blog4 = Blog(name: "Tony'Blog", URL: "51work6.com", Author: nil)

guardStyleBlog(blog1)
guardStyleBlog(blog2)

guardLongStyleBlog(blog3)
guardLongStyleBlog(blog4)
