//
//  ViewController.swift
//  Lab3
//
//  Created by Laney Winkler on 9/29/18.
//  Copyright © 2018 Laney Winkler. All rights reserved.
//


import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var Years: UITextField!
    @IBOutlet weak var Months: UITextField!
    @IBOutlet weak var Days: UITextField!
    @IBOutlet weak var Hours: UITextField!
    @IBOutlet weak var MinutesLabel: UILabel!

    func textFieldShouldReturn(_ textField: UITextField) -> Bool { textField.resignFirstResponder()
        return true
    }
    //To close the keyboard when the user touches anywhere on the screen
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func calculateTime(){
        var totalYears:Float
        var totalMonths:Float
        var totalDays:Float
        var totalHours:Float
        //There are 525600 minutes to a year
        if Years.text!.isEmpty{ totalYears=0.0
        } else {
            totalYears=Float(Years.text!)!*525600
        }
        //I have an alert for the months for when the user puts in 12 months, as 12 months is the same as a year
        if Months.text!.isEmpty{ totalMonths = 0.0
        } else {
            //Added Here
            let numberOfMonths=Int(Months.text!)
            if numberOfMonths! == 12{
                let alert=UIAlertController(title: "Warning", message: "12 months is equal to 1 year, try adding 1 to years instead", preferredStyle: UIAlertControllerStyle.alert)
                let cancleAlert=UIAlertAction(title: "Cancel", style:UIAlertActionStyle.cancel, handler:nil )
                alert.addAction(cancleAlert)
                let okAlert = UIAlertAction(title: "OK", style:UIAlertActionStyle.default, handler:{
                    action in
                    self.Months.text="0"
                    self.calculateTime()})
                alert.addAction(okAlert)
                present(alert, animated: true, completion: nil)
            }
            //There are 43800 minutes in a month
            totalMonths=Float(Months.text!)!*43800
        }//There are 1440 minutes in a day
        if Days.text!.isEmpty{ totalDays=0.0
        } else {
            totalDays=Float(Days.text!)!*1440
        }
        //There are 60 minutes in an hour
        if Hours.text!.isEmpty{ totalHours=0.0
        } else {
            totalHours=Float(Hours.text!)!*60
        }
        let totalTime = totalYears+totalMonths+totalDays+totalHours
        MinutesLabel.text = "\(totalTime)"
        
    }
    
   func textFieldDidEndEditing(_ textField: UITextField) { calculateTime()
    }

    override func viewDidLoad() {
        Years.delegate=self
        Months.delegate=self
        Days.delegate=self
        Hours.delegate=self
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }


}

