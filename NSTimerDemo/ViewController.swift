//
//  ViewController.swift
//  NSTimerDemo
//
//  Created by ying on 16/4/21.
//  Copyright © 2016年 ying. All rights reserved.
//

import UIKit

//时间控制器NSTimer可以实现定时器功能，即每隔一定时间执行具体函数，可以重复也可以只执行一次

class ViewController: UIViewController {
    
    @IBOutlet weak var labelText: UILabel!
    
    var timer: NSTimer!
    
    var str = "tick ..."

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //启用计时器，控制每秒执行一次tickDown方法
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(ViewController.tickDown), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /**
     *计时器每秒触发事件
     */
    func tickDown()
    {
        str = str + "tick ..."
        labelText.text = str
    }
    
    @IBAction func stopTimer(sender: UIButton) {
        //停止定时器
        timer.invalidate()
    }
    
    

}

