//
//  SecondViewController.swift
//  ios-bridge-control
//
//  Created by Xiao Lu on 10/22/15.
//  Copyright © 2015 Xiao Lu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet var engineSwitch:UISwitch!
    @IBOutlet var warpFactorSlider:UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func engineSwitchTapped(sender: AnyObject) {
    }

    @IBAction func warpSliderTouched(sender: AnyObject) {
    }
    
    @IBAction func settingsButtonClicked(sender: AnyObject) {
    }
}

