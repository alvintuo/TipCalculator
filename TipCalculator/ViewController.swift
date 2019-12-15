//
//  ViewController.swift
//  TipCalculator
//
//  Created by Alvin Tuo on 7/2/19.
//  Copyright © 2019 iOSSwiftCTD. All rights reserved.
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
    @IBOutlet weak var percent20Button: UIButton!
    @IBOutlet weak var percent25Button: UIButton!
    @IBOutlet weak var currentButton: UILabel!
    
    var valueOfPeople = 1.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*
 
 Following needs to be done before publication: The app should reload the tip amount without pushing, with a constant loop. This ensures that a person would not have to press a button a second time */
//        var count = 0
//        _ = Timer.scheduledTimer(withTimeInterval: 0.188, repeats: true){ t in
//            count += 1
//            if count >= 888888888888 {
//                t.invalidate()
//            }
//        }
    }
    
    
    
    
    @IBAction func tenPercentButton(_ sender: Any) {
        if let tenTip = Double(totalAmount.text!)  {
            let tenTipAmt = (0.1 * tenTip) / valueOfPeople
            let tenTipTotal = 1.1 * tenTip / valueOfPeople
            let tenTipRenewed = tenTip / valueOfPeople
            let tenTipRounded = String(format: "%.2f", tenTipRenewed)
            let tenTipAmtRounded = String(format: "%.2f", tenTipAmt)
            let tenTipTotalRounded = String(format: "%.2f", tenTipTotal)
            tipLabel.text = "\(tenTipRounded)"
            totalLabel.text = "\(tenTipTotalRounded)"
            preTipLabel.text = "\(tenTipAmtRounded)"
            view.endEditing(true)
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
            let fifteenTipRounded = String(format: "%.2f", fifteenTipRenewed)
            let fifteenTipAmtRounded = String(format: "%.2f", fifteenTipAmt)
            let fifteenTipTotalRounded = String(format: "%.2f", fifteenTipTotal)
            tipLabel.text = "\(fifteenTipRounded)"
            totalLabel.text = "\(fifteenTipTotalRounded)"
            preTipLabel.text = "\(fifteenTipAmtRounded)"
            view.endEditing(true)
        }
        if let button = sender as? UIButton {
            currentButton.text = "15%"
        }
    }
    
    @IBAction func twentyPercentButton(_ sender: Any) {
        if let twentyTip = Double(totalAmount.text!) {
            let twentyTipAmt = 0.2 * twentyTip / valueOfPeople
            let twentyTipTotal = 1.2 * twentyTip / valueOfPeople
            let twentyTipRenewed = twentyTip / valueOfPeople
            let twentyTipRounded = String(format: "%.2f", twentyTipRenewed)
            let twentyTipAmtRounded = String(format: "%.2f", twentyTipAmt)
            let twentyTipTotalRounded = String(format: "%.2f", twentyTipTotal)
            tipLabel.text = "\(twentyTipRounded)"
            totalLabel.text = "\(twentyTipTotalRounded)"
            preTipLabel.text = "\(twentyTipAmtRounded)"
            view.endEditing(true)
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
            let twentyfiveTipRounded = String(format: "%.2f", twentyfiveTipRenewed)
            let twentyfiveTipAmtRounded = String(format: "%.2f", twentyfiveTipAmt)
            let twentyfiveTipTotalRounded = String(format: "%.2f", twentyfiveTipTotal)
            tipLabel.text = "\(twentyfiveTipRounded)"
            totalLabel.text = "\(twentyfiveTipTotalRounded)"
            preTipLabel.text = "\(twentyfiveTipAmtRounded)"
            view.endEditing(true)
        }
        if let button = sender as? UIButton {
            currentButton.text = "25%"
        }
    }
    
    
    @IBAction func numberOfPeople(_ sender: UIStepper) {
        displayPeopleResult.text = Int(sender.value).description
        valueOfPeople = sender.value
    }
    
    @IBAction func updatePeople(_ sender: UIStepper) {
        if currentButton.text == String("10%") {
            tenPercentButton((Any).self)
        } else if currentButton.text == String("15%") {
            fifteenPercentButton((Any).self)
        } else if currentButton.text == String("20%") {
            twentyPercentButton((Any).self)
        } else if currentButton.text == String("25%") {
            twentyfivePercentButton((Any).self)
        }
        
    }
    
    
    
}


