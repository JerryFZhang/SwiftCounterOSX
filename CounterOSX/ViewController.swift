//
//  ViewController.swift
//  CounterOSX
//
//  Created by Jerry Zhang on 2016-01-24.
//  Copyright © 2016 Jerry Zhang. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    @IBOutlet weak var Result: NSTextField!

    var counter = 0
    
    @IBAction func Increment(sender: AnyObject) {
    
        counter++
        Result.stringValue = String(counter)
        NSLog("Incremented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }

}

