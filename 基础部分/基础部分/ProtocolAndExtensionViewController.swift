//
//  ProtocolAndExtensionViewController.swift
//  基础部分
//
//  Created by cgs on 2017/5/15.
//  Copyright © 2017年 cgs. All rights reserved.
//

import UIKit


protocol StudentPotocol {
    
    var name: String { get set }
    var birthPlace: String { get }
    var math: Double {get set}
    
}

class Bob: StudentPotocol {
    
    var name: String = "bob"
    var birthPlace: String = "shanghai"
    var math: Double = 100
}

class ProtocolAndExtensionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        let people = Bob()
        people.name = "hanmeimei"
        people.birthPlace = "nanjing"
        print(people.name, people.birthPlace)
        
        //协议中的get与set
        var potocol1: StudentPotocol = people;
        print(potocol1.name, potocol1.birthPlace)
        potocol1.name = "123"
//        potocol1.birthPlace = "123" 报错
        
        
        let people1 = Bob();
        
        
    }
}
