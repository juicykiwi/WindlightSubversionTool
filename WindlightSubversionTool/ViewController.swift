//
//  ViewController.swift
//  WindlightSubversionTool
//
//  Created by Juicy on 2019. 5. 5..
//  Copyright © 2019년 Juicy. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    @IBOutlet var _textView: NSTextView!
    
    var _shellExecutor: ShellExecutor = ShellExecutor();
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func OnLogButton(_ sender: NSButton) {
        NSLog("ViewController.OnLogButton()")
        
        let outputLog:String = _shellExecutor.Execute(command: "svn help log");
        _textView.string = outputLog;
    }
}

