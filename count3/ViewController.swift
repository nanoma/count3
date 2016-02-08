//
//  ViewController.swift
//  count3
//
//  Created by 花田奈々 on 2016/02/01.
//  Copyright © 2016年 com.litech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var number: Int = 0
   
    @IBOutlet weak var temparatureLabel: UILabel!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func changeBackGround() {
        backgroundImageView.image = UIImage(named: "sunn")
    }
    
    @IBAction func minus(){
        number = number-1
        temparatureLabel.text = String(number)
        
        if number < 0 {
            temparatureLabel.textColor = UIColor.blueColor()
            backgroundImageView.image = UIImage(named: "yuki")
            
        }
     }
    
    @IBAction func plus(){
        number = number+1
        temparatureLabel.text = String(number)
        if number >= 0 {
            temparatureLabel.textColor = UIColor.redColor()
            backgroundImageView.image = UIImage(named: "sunn")
        }
        
    }
}


