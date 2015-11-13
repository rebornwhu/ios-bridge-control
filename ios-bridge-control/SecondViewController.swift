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
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setBool(engineSwitch.on, forKey: warpDriveKey)
    }

    @IBAction func warpSliderTouched(sender: AnyObject) {
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setFloat(warpFactorSlider.value, forKey: warpFactorKey)
    }
    
    @IBAction func settingsButtonClicked(sender: AnyObject) {
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        refreshFields()
    }
    
    func refreshFields() {
        let defaults = NSUserDefaults.standardUserDefaults()
        engineSwitch.on = defaults.boolForKey(warpDriveKey)
        warpFactorSlider.value = defaults.floatForKey(warpFactorKey)
    }
}

