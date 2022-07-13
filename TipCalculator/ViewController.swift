//
//  ViewController.swift
//  TipCalculator
//
//  Created by Alvin Tuo on 7/2/19.
//  Copyright© 2019. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet weak var totalAmount: UITextField!
    @IBOutlet weak var displayPeopleResult: UILabel!
    @IBOutlet weak var numberOfPeople: UIStepper!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var preTipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var percent10Button: UIButton!
    @IBOutlet weak var percent15Button: UIButton!
    @IBOutlet weak var percent18Button: UIButton!
    @IBOutlet weak var percent20Button: UIButton!
    @IBOutlet weak var percent25Button: UIButton!
    @IBOutlet weak var currentButton: UILabel!
    @IBOutlet weak var customPercentage: UITextField!
    @IBOutlet weak var calculateCustom: UIButton!
    @IBOutlet weak var roundDollarBoolean: UISwitch!
    @IBOutlet weak var roundedLabel: UILabel!
    
    var valueOfPeople = 1.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tenPercentButton(_ sender: Any) {
        if let tenTip = Double(totalAmount.text!)  {
            let tenTipAmt = (0.1 * tenTip) / valueOfPeople
            let tenTipTotal = 1.1 * tenTip / valueOfPeople
            let tenTipRenewed = tenTip / valueOfPeople
            tipLabel.text = "\(String(format: "%.2f", tenTipRenewed))"
            totalLabel.text = "\(String(format: "%.2f", tenTipTotal))"
            preTipLabel.text = "\(String(format: "%.2f", tenTipAmt))"
            view.endEditing(true)
            roundDollarBoolean.setOn(false, animated: true)
        }
        if let button = sender as? UIButton {
            currentButton.text = "10%"
        }
    }
    
    @IBAction func fifteenPercentButton(_ sender: Any) {
        if let fifteenTip = Double(totalAmount.text!) {
            let fifteenTipAmt = 0.15 * fifteenTip / valueOfPeople
            let fifteenTipTotal = 1.15 * fifteenTip / valueOfPeople
            let fifteenTipRenewed = fifteenTip / valueOfPeople
            tipLabel.text = "\(String(format: "%.2f", fifteenTipRenewed))"
            totalLabel.text = "\(String(format: "%.2f", fifteenTipTotal))"
            preTipLabel.text = "\(String(format: "%.2f", fifteenTipAmt))"
            view.endEditing(true)
            roundDollarBoolean.setOn(false, animated: true)
        }
        if let button = sender as? UIButton {
            currentButton.text = "15%"
        }
    }
    
    @IBAction func eighteenPercentButton(_ sender: Any) {
        if let eighteenTip = Double(totalAmount.text!) {
            let eighteenTipAmt = 0.18 * eighteenTip / valueOfPeople
            let eighteenTipTotal = 1.18 * eighteenTip / valueOfPeople
            let eighteenTipRenewed = eighteenTip / valueOfPeople
            tipLabel.text = "\(String(format: "%.2f", eighteenTipRenewed))"
            totalLabel.text = "\(String(format: "%.2f", eighteenTipTotal))"
            preTipLabel.text = "\(String(format: "%.2f", eighteenTipAmt))"
            view.endEditing(true)
            roundDollarBoolean.setOn(false, animated: true)
        }
        if let button = sender as? UIButton {
            currentButton.text = "18%"
        }
    }
    
    @IBAction func twentyPercentButton(_ sender: Any) {
        if let twentyTip = Double(totalAmount.text!) {
            let twentyTipAmt = 0.2 * twentyTip / valueOfPeople
            let twentyTipTotal = 1.2 * twentyTip / valueOfPeople
            let twentyTipRenewed = twentyTip / valueOfPeople
            tipLabel.text = "\(String(format: "%.2f", twentyTipRenewed))"
            totalLabel.text = "\(String(format: "%.2f", twentyTipTotal))"
            preTipLabel.text = "\(String(format: "%.2f", twentyTipAmt))"
            view.endEditing(true)
            roundDollarBoolean.setOn(false, animated: true)
        }
        if let button = sender as? UIButton {
            currentButton.text = "20%"
        }
    }
    
    @IBAction func twentyfivePercentButton(_ sender: Any) {
        if let twentyfiveTip = Double(totalAmount.text!) {
            let twentyfiveTipAmt = 0.25 * twentyfiveTip / valueOfPeople
            let twentyfiveTipTotal = 1.25 * twentyfiveTip / valueOfPeople
            let twentyfiveTipRenewed = twentyfiveTip / valueOfPeople
            tipLabel.text = "\(String(format: "%.2f", twentyfiveTipRenewed))"
            totalLabel.text = "\(String(format: "%.2f", twentyfiveTipTotal))"
            preTipLabel.text = "\(String(format: "%.2f", twentyfiveTipAmt))"
            view.endEditing(true)
            roundDollarBoolean.setOn(false, animated: true)
        }
        if let button = sender as? UIButton {
            currentButton.text = "25%"
        }
    }

    @IBAction func calculateCustomPercentage(_ sender: Any){
            
        if let billAmt = Double(totalAmount.text!) {
            if let customTipPercent = Double(customPercentage.text!) {
                let customTipAmt = billAmt * (customTipPercent / 100.0) / valueOfPeople
                let customTipTotal = billAmt * ((customTipPercent / 100.0) + 1.0) / valueOfPeople
                let customWithPeople = billAmt / valueOfPeople
                tipLabel.text = "\(String(format: "%.2f", customWithPeople))"
                totalLabel.text = "\(String(format: "%.2f", customTipTotal))"
                preTipLabel.text = "\(String(format: "%.2f", customTipAmt))"
                view.endEditing(true)
                roundDollarBoolean.setOn(false, animated: true)
            }
        }
        
        if let button = sender as? UIButton {
            currentButton.text = customPercentage.text! + "%"
        }
    }
    
    
    
    @IBAction func numberOfPeople(_ sender: UIStepper) {
        displayPeopleResult.text = Int(sender.value).description
        valueOfPeople = sender.value
        roundDollarBoolean.setOn(false, animated: true)
    }
    
    @IBAction func round(_ sender: Any) {
        
        if roundDollarBoolean.isOn {
            if let pretipTotal = Double(tipLabel.text!) {
                if let tipAmount = Double(preTipLabel.text!) {
                    let difference = 1.0 - (pretipTotal + tipAmount).truncatingRemainder(dividingBy: 1)
                    
                    if difference < 1.0 {
                    
                    roundedLabel.text = "\(String(format: "%.2f", difference))"
                    totalLabel.text = "\(String(format: "%.2f", (difference + pretipTotal + tipAmount)))"
                    
                    }
            }
        }
        } else {
            if let pretipTotal = Double(tipLabel.text!) {
                if let tipAmount = Double(preTipLabel.text!) {
                    roundedLabel.text = "0.00"
                    totalLabel.text = "\(String(format: "%.2f", (pretipTotal + tipAmount)))"
                }
            }
        }
}
    
    @IBAction func updatePeople(_ sender: UIStepper) {
        if currentButton.text == String("10%") {
            tenPercentButton((Any).self)
        } else if currentButton.text == String("15%") {
            fifteenPercentButton((Any).self)
        } else if currentButton.text == String("20%") {
            twentyPercentButton((Any).self)
        } else if currentButton.text == String("18%") {
            eighteenPercentButton((Any).self)
        } else if currentButton.text == String("25%") {
            twentyfivePercentButton((Any).self)
        } else {
            calculateCustomPercentage((Any).self)
        }
        roundDollarBoolean.setOn(false, animated: true)
    }
    
}
