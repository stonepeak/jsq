//
//  ViewController.swift
//  jsq
//
//  Created by dou on 16/3/17.
//  Copyright © 2016年 stonepeak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLable: UILabel!
    var operand1:String = ""
    var operand2:String = ""
    var operand:String = ""
       
        
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func button(sender: UIButton) {
        
        let value = sender.currentTitle!
        
        if(value == "+" || value == "-" || value == "*" || value == "/") {
            operand = value
            return
        }else if(value == "="){
          var result = 0
          result = Int(operand1)! + Int(operand2)!
          resultLable.text = "\(result)"
          operand = ""
          operand1 = ""
          operand2 = ""
          return
        }
        
        if operand == ""{
           operand1 = operand1 + value
           resultLable.text = operand1
        }else{
          operand2 = operand2 + value
           resultLable.text = operand2
        }
        
    }
}

