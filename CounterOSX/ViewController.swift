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
    // Lable on the user interface.
    
    @IBOutlet var ParentView: NSView!
    // ParentView for backgroud color.
    
    var counter = 0
    //Record user interactions.
    
    @IBAction func Increment(sender: AnyObject) {
    
        //After the button was pressed, the method will be called.
        counter++
        Result.stringValue = String(counter)
        //Update the label
        NSLog("Incremented")

    }
    
    
    @IBAction func Reset(sender: AnyObject) {
      
        //After the reset button was pressed, the method will be called and the counter will be set to zero.
        counter = 0
        Result.stringValue = String (counter)
        NSLog("Reset")
    
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Result.font = NSFont.monospacedDigitSystemFontOfSize(144, weight: -1)
        // Set the font size to 144px, set the weight to thin and set the font type to monospaced.
        
        self.view.wantsLayer = true
        ParentView.layer?.backgroundColor = NSColor.whiteColor().CGColor
        // Set the background color to white.
    }


}

