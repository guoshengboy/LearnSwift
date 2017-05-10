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
        
        assert(pi1>100, "必须大于100 不大于100就要崩溃  你试试看")

        self.assert1();
        self.optionals();
        self.tuples();
        
    }
    
    
    /// 断言 (用于差错)
    func assert1() -> () {
        //当条件可能为假时使用断言，但是最终一定要保证条件为真，这样你的代码才能继续运行。断言的适用情景:
        //整数类型的下标索引被传入一个自定义下标实现，但是下标索引值可能太小或者太大。 • 需要给函数传入一个值，但是非法的值可能导致函数不能正常执行。
          //  • 一个可选值现在是 nil ，但是后面的代码运行需要一个非 nil 值。
        let pi1 = 3 + 0.14159;
        print(pi1);
         //release 断言失效
        assert(pi1>100, "必须大于100 不大于100就要崩溃  你试试看")
    }

    
    
    ///可选类型
    func optionals() -> () {
        //一个可选的 Int 被写作 Int? 而不是 Int 。问号暗示包含的值是可选类型，也就是说可能包含 Int 值也可能不包含值。(不能包含其他任何值比如 Bool 值或者 String 值。只能是 Int 或者什么都没有nil。)
        //这样使用结构器转换时 abc都默认为可选类型 Int？
        var abc = Int("123");
        abc = nil;
        if  true{
            
            //可选类型 默认值  没有空格报错 坑啊
            print(abc ?? 11111);
            
            //当打印可选类型是 使用！(！就是告诉编译器我这个一定有值不用在写默认值了)时必须确定abc有值 否则运行报错
//            print(abc!);
        }
        
        
        //可选绑定（如果把可选类型的包含就把值赋给一个临时常量或者变量 如果成功赋值，就能直接使用这个被复制的变量或常量  一般用于if  while等地方）
        if  let aAbc = abc{
            
            print("the \'\(String(describing: abc))\' have a value of \(aAbc)");
        }else{
         
            print("abc是nil")
        }
}

    
    /// 元组
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

