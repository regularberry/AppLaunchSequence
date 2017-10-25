//
//  ViewController.swift
//  AppLaunchSequence
//
//  Created by Sean Berry on 10/11/17.
//  Copyright © 2017 Sean Berry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func updateTextView(){
        self.textView.text = (UIApplication.shared.delegate as? AppDelegate)!.consoleOutput
    }
}
