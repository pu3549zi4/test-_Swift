//
//  ViewController.swift
//  test
//
//  Created by Xmart on 16/8/17.
//  Copyright © 2016年 Paul.Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let myView:UIView = UIView()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myView.backgroundColor = UIColor.orangeColor()
        myView.frame = CGRectMake(0, 0, 222, 222)
        myView.center = view.center;
        self.view.addSubview(myView)
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let touch = touches.first
        let point = touch?.locationInView(myView)
        let a = (Float((point?.x)!), Float((point?.y)!));
        
        if point?.x > myView.bounds.size.width || point?.x < 0 || point?.y > myView.bounds.size.height || point?.y < 0 {
            print("点\(a),out of myView.")
        }
        else {
            print("点\(a),in the myView.")
        }
        
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

