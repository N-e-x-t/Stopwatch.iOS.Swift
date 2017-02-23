//
//  ViewController.swift
//  Stopwatch
//
//  Created by Jigar Parekh on 13/02/17.
//  Copyright © 2017 Next. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var time = 0
    
    var timer = Timer()
    
    
    @IBAction func start(_ sender: Any)
    {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action), userInfo: nil, repeats: true)
    }
    
    @IBAction func pause(_ sender: Any)
    {
        timer.invalidate()
    }
    
    
    @IBAction func reset(_ sender: Any)
    {
        timer.invalidate()
        time = 0
        label.text = ("0")
    }
    
    func action()
    {
        time += 1
        label.text = String(time)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
           }


}

