//
//  ViewController.swift
//  基础部分
//
//  Created by cgs on 2017/5/9.
//  Copyright © 2017年 cgs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //不同类型的常量或变量不能相加减 要先转化
        let three = 3
        let pointOneFourOneFiveNine = 0.14159
//        let pi = three + pointOneFourOneFiveNine;
        let pi = Double(three) + pointOneFourOneFiveNine;
        print(pi);
        
        //这不是常量或变量 所以可以加减 并默认double
        let pi1 = 3 + 0.14159;
        print(pi1);
        


        self.optionals();
        self.tuples();
        
    }
    
    
    
    ///可选类型
    func optionals() -> () {
        //一个可选的 Int 被写作 Int? 而不是 Int 。问号暗示包含的值是可选类型，也就是说可能包含 Int 值也可能不包含值。(不能包含其他任何值比如 Bool 值或者 String 值。只能是 Int 或者什么都没有nil。)
        //这样使用结构器转换时 abc都默认为可选类型 Int？
        var abc = Int("123");
        abc = nil;
        if  true{
            //当打印可选类型是 使用！(！就是告诉编译器我这个一定有值不用在写默认值了)时必须确定abc有值 否则运行报错
            print(abc!);
            
            //可选类型 默认值  没有空格报错 坑啊
            print(abc ?? 123);
        }
    }

    
    /// 元祖
    func tuples() -> () {
        
        //元组tuples创建
        let http404Error = (404, "Not Found", "123");
        print(http404Error);
        
        
        //取值（1）
        let (httpCode, httpStatus, abc) = http404Error;
        print("错误码\(httpCode) 错误描述\(httpStatus), \(abc)");
        
        //取值不要的值可以_忽略（2）
        let (httpCode1, httpStatus1, _) = http404Error;
        print("错误码\(httpCode1) 错误描述\(httpStatus1)");
        
        //下标取值（3）
        print("错误码\(http404Error.0) 错误描述\(http404Error.1)");
        
        //可以给元组元素命名
        let peoplePlay = (xiaohong:12, xiaoming:15);
        print(peoplePlay.xiaoming)
        
        
    }

}

