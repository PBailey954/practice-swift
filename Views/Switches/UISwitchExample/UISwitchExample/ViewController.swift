//
//  ViewController.swift
//  UISwitchExample
//
//  Created by Domenico Solazzo on 04/05/15.
//  License MIT
//

import UIKit

class ViewController: UIViewController {

    // UISwitch
    var uiSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Creating a switch
        uiSwitch = UISwitch(frame: CGRect(x: 100, y: 100, width: 0, height: 0))
        
        // Switch is changed
        uiSwitch.addTarget(self,
            action: #selector(ViewController.switchIsChanged(_:)),
            for: .valueChanged)
        
        /* Adjust the off-mode tint color */
        uiSwitch.tintColor = UIColor.red
        /* Adjust the on-mode tint color */
        uiSwitch.onTintColor = UIColor.brown
        /* Also change the knob's tint color */
        uiSwitch.thumbTintColor = UIColor.green
        
        // Adding the subview
        self.view.addSubview(uiSwitch)
    }
    
    func switchIsChanged(_ sender: UISwitch){
        print("Sender is = \(sender)")
        
        if sender.isOn{
            print("The switch is turned on")
        } else {
            print("The switch is turned off")
        }
    }


}

