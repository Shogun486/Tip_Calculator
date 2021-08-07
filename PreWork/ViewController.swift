//
//  ViewController.swift
//  Prework
//
//  Created by Shagun Karmacharya on 7/23/21.
//

import UIKit

class ViewController: UIViewController
{
    //let user_Defaults = UserDefaults.standard //Save User Settings
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    //ADDED Outlets
    @IBOutlet weak var billAmountGreen: UIView!
    @IBOutlet weak var TipGreen: UIView!
    @IBOutlet weak var PartySizeGreen: UIView!
    @IBOutlet weak var PerPersonGreen: UIView!
    @IBOutlet weak var TotalGreen: UIView!
    @IBOutlet weak var PartySizeTextField: UITextField!
    @IBOutlet weak var PayPerPerson: UILabel!
    @IBOutlet weak var DollarBillAmount: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Tip Calculator"
        self.PartySizeTextField.text = "1"
    }
    
    @IBAction func calculateTip(_ sender: Any)
    {
        //Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        //Get Total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let billSplit = total/(Double(PartySizeTextField.text!) ?? 0)
        self.PayPerPerson.text = String(format: "$%.2f", billSplit)
        //Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        //Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
    }
}

