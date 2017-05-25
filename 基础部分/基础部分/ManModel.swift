//
//  ManModel.swift
//  基础部分
//
//  Created by cgs on 2017/5/15.
//  Copyright © 2017年 cgs. All rights reserved.
//

import Foundation

class ManModel: PersonModel {
    
    
    override var age: Int{
        
        get{
            
            return super.age
        }
        set{
            
            super.age = newValue > 10 ? 10 : newValue
        }
    }
    
    
    
    
    
}
