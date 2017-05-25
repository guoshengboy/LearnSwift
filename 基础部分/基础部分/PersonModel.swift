//
//  PersonModel.swift
//  基础部分
//
//  Created by cgs on 2017/5/12.
//  Copyright © 2017年 cgs. All rights reserved.
//

import UIKit

class PersonModel {

    var sex = 0 //0男  1女 默认男
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        
        self.name = name
        self.age = age
    }
}
