//
//  Enum&StructViewController.swift
//  基础部分
//
//  Created by cgs on 2017/5/15.
//  Copyright © 2017年 cgs. All rights reserved.
//

import UIKit

class Enum_StructViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white;
        
        
        //enum   最基本的枚举  和OC不一样 没有默认0 1 2 字符串就是字符串
        enum Direction{
            
            case East
            case South
            case West
            case North
        }
        
        let dir = Direction.East
        print(dir);
        
        
        //给枚举赋值   Direction1.East.rawValue 取枚举的值    East=10  后面的依次增加1
        enum Direction1: Double{
            
            case East = 10
            case South
            case West
            case North
        }
        let dir1 = Direction1.East
        if dir1 == Direction1.East {
            
            print(Direction1.North.rawValue)
        }
        print(dir1);
        
        
        
        
        //Struct 来创建一个结构体。结构体和类有很多相同的地方，比如方法和构造器。它们之间最大的一个区别就 是结构体是传值，类是传引用。
        struct car{
            
            var dir: Direction1
            func getCarName() -> String {
                
                return "宝骏"
            }
        }
        let oneStruct = car.init(dir: Direction1.East)
        let carName = oneStruct.getCarName()
        print(carName)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
}
