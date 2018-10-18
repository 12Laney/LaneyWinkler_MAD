//
//  ViewController.swift
//  Midterm1
//
//  Created by Laney Winkler on 10/18/18.
//  Copyright © 2018 Laney Winkler. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var workoutTimeText: UITextField!
    
    @IBOutlet weak var milesworkedLabel: UILabel!
    
    @IBOutlet weak var caloriesLabel: UILabel!
    
    @IBOutlet weak var workoutButtonLabel: UIButton!
    var totalMiles:Float = 0.0
    var caloriesburned:Float = 0.0

    //Get rid of keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    //TO GET RID OF KEYBOARD TOUCHING ANYWHERE
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    //helper function
    func milesRun(){
        var milesRan:Float
        if workoutTimeText.text!.isEmpty{
            milesRan=0.0
        }else{
            milesRan = Float(workoutTimeText.text!)!
        }
        totalMiles = milesRan/10
        caloriesburned=milesRan*600
        milesworkedLabel.text="\(totalMiles) Miles"
        caloriesLabel.text="\(caloriesburned) calories burned"
    }
    
    @IBAction func updateWorkout(_ sender: UIButton) {
        milesRun()
    }
    
    
    
    override func viewDidLoad() {
        workoutTimeText.delegate=self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

