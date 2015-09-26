//
//  ViewController.swift
//  tipster
//
//  Created by Chuning Luo on 9/26/15.
//  Copyright © 2015 ChuningLuo. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var total: UILabel!
    
    @IBOutlet weak var billAmountField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    //This is the function that gets run when the view is shown on the screen.

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipAmountLabel.text="$0.00"
        total.text="$0.00"
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChange(sender: AnyObject)
    {
        let tipPercentages = [0.15, 0.20, 0.25]
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        //let billAmount = billAmountField.text
        //let tipAmount = NSString (string: billAmount!).doubleValue * 0.2
        //print(tipAmount)
        
        let billAmount = NSString(string: billAmountField.text!).doubleValue
        let tipAmount = billAmount * tipPercentage
        let totalValue = billAmount + tipAmount
        
        //print(tipAmount)
        //print(total)
    
        tipAmountLabel.text = "$\(tipAmount)"
        total.text = "$\(totalValue)"
        print(tipControl.selectedSegmentIndex)
    }

}

