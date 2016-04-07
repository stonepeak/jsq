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
    var n1: String = ""
    var n2: String = ""
    
    var pointLoop: Bool = false
    var operand: String = ""
       
        
   
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
        if value == "AC" {
            n1 = ""
            n2 = ""
            resultLable.text = ""
            return
        } else if value == "+"||value == "-"||value == "*"||value == "/"||value == "x^y"{
            operand = value
            resultLable.text = ""
            return
        }else if value == "="{
          var result = 0.0
            
            switch operand{
                case "+":
                result = Double(n1)! + Double(n2)!
                 resultLable.text = "result"
            case "-":
                result = Double(n1)! - Double(n2)!
                resultLable.text = "result"
            case "*":
                result = Double(n1)! * Double(n2)!
                resultLable.text = "result"
            case "/":
                result = Double(n1)! / Double(n2)!
                resultLable.text = "result"
            case "x^y":
                result=1;
                for(var c=0; c < (Int)(n2) ;c++)
                {
                   result =  result * Double(n1)!
                }
                resultLable.text = "result"
            default:
                result = 0
            
            }
          
          resultLable.text = "\(result)"
          operand = ""
          n1 = ""
          n2 = ""
          return
        }
        if operand  == ""{
            n1 = n1 + value
            resultLable.text = "\(n1)"
            return
        }
        else {
            n2 = n2 + value
            resultLable.text = "\(n2)"
            return
        }
    }
    
    @IBAction func point(sender: UIButton) {
    if(!pointLoop)
    {
        if(!(resultLable.text! == "")){
              resultLable.text! += ".";
            pointLoop=true;
        }
    }
        

    }
}

