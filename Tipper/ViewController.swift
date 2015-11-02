//
//  ViewController.swift
//  Tipper
//
//  Created by Terry Nguyen on 10/30/15.
//  Copyright © 2015 Terry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtBillAmount: UITextField!
    @IBOutlet weak var lbTipAmount: UILabel!
    @IBOutlet weak var lbTotalAmount: UILabel!
    @IBOutlet weak var segPercent: UISegmentedControl!
    
    let tipPercents = [0.05, 0.1, 0.15]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        txtBillAmount.text = "";
        lbTipAmount.text = "$00.00"
        lbTotalAmount.text = "$00.00"
        segPercent.selectedSegmentIndex = UserData.defaultTipPercentIndex;
        updateStyle();
    }
    
    override func viewWillAppear(animated:Bool) {
        updateStyle();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true);
    }
    
    @IBAction func onValueChanged(sender: AnyObject) {
        var billAmount = 0.0;
        if (txtBillAmount.text! != "") {
            billAmount = Double(txtBillAmount.text!)!;
        }
        let tipPercent = tipPercents[segPercent.selectedSegmentIndex];
        let tipAmount = billAmount * tipPercent
        let totalAmount = billAmount + tipAmount;
        lbTipAmount.text = String(format: "$%.02f", tipAmount);
        lbTotalAmount.text = String(format: "$%.02f", totalAmount);
    }
    
    func updateStyle() {
        view.backgroundColor = UserData.darkStyle ? UIColor.darkGrayColor() : UIColor.whiteColor();
        txtBillAmount.backgroundColor = UserData.darkStyle ? UIColor.darkGrayColor() : UIColor.whiteColor();
        txtBillAmount.textColor = UserData.darkStyle ? UIColor.lightTextColor() : UIColor.blackColor();
        lbTipAmount.backgroundColor = UserData.darkStyle ? UIColor.darkGrayColor() : UIColor.whiteColor();
        lbTipAmount.textColor = UserData.darkStyle ? UIColor.lightTextColor() : UIColor.blackColor();
        lbTotalAmount.backgroundColor = UserData.darkStyle ? UIColor.darkGrayColor() : UIColor.whiteColor();
        lbTotalAmount.textColor = UserData.darkStyle ? UIColor.lightTextColor() : UIColor.blackColor();
    }
    
    
}

