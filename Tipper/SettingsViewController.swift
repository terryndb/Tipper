//
//  SettingsViewController.swift
//  Tipper
//
//  Created by Terry Nguyen on 10/31/15.
//  Copyright © 2015 Terry. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var swtDarkStype: UISwitch!
    @IBOutlet weak var segTipPercents: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        segTipPercents.selectedSegmentIndex = UserData.defaultTipPercentIndex;
        swtDarkStype.on = UserData.darkStyle;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onValueChanged(sender: AnyObject) {
        UserData.defaultTipPercentIndex = segTipPercents.selectedSegmentIndex;
        UserData.darkStyle = swtDarkStype.on;
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        var controller = segue.destinationViewController as! ViewController;
        controller.updateStyle();
    }


}
