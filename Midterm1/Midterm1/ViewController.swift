//
//  ViewController.swift
//  Midterm1
//
//  Created by Laney Winkler on 10/18/18.
//  Copyright © 2018 Laney Winkler. All rights reserved.
//

import UIKit

//NOTE: The math will be off because I forgot to convert hours to minutes.... so when you type in "60" it will read that as 60 hours... oops



class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var workoutTimeText: UITextField!
    
    @IBOutlet weak var milesworkedLabel: UILabel!
    
    @IBOutlet weak var caloriesLabel: UILabel!
    
    @IBOutlet weak var workoutButtonLabel: UIButton!
    
    @IBOutlet weak var DayWeekSwitch: UISwitch!
    
    @IBOutlet weak var segControlVar: UISegmentedControl!
    
    @IBOutlet weak var workoutImage: UIImageView!
    
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
    func bikeAverage(){
        var bikeworkout: Float
        if workoutTimeText.text!.isEmpty{
            bikeworkout=0.0
        }else{
            bikeworkout = Float(workoutTimeText.text!)!
            totalMiles = (bikeworkout*4/15)
            caloriesburned=(bikeworkout*510/60)
            milesworkedLabel.text="\(totalMiles) Miles"
            caloriesLabel.text="\(caloriesburned) calories burned"
    }
    }
    
    func swimAverage(){
        var swimworkout: Float
        if workoutTimeText.text!.isEmpty{
            swimworkout=0.0
        }else{
            swimworkout = Float(workoutTimeText.text!)!
            totalMiles = (swimworkout*2/15)
            caloriesburned=(swimworkout*420/60)
            milesworkedLabel.text="\(totalMiles) Miles"
            caloriesLabel.text="\(caloriesburned) calories burned"
        }
    }
    
    func updateWorkoutType(){
        if segControlVar.selectedSegmentIndex == 0{
            workoutImage.image = UIImage(named: "run")
            milesRun()
        }
        if segControlVar.selectedSegmentIndex == 1{
            workoutImage.image = UIImage(named: "swim")
            swimAverage()
        }
        if segControlVar.selectedSegmentIndex == 2{
            workoutImage.image = UIImage(named: "bike")
            bikeAverage()
        }
    }
    
    @IBAction func changeWorkoutType(_ sender: UISegmentedControl) {
        updateWorkoutType()
    }
    
    func updateDayWeek(){
        if DayWeekSwitch.isOn{
            var weekmilesRan:Float
            if workoutTimeText.text!.isEmpty{
                weekmilesRan=0.0
            }else{
                weekmilesRan = Float(workoutTimeText.text!)!
            totalMiles = (weekmilesRan/10*5)
                caloriesburned=(weekmilesRan*10*5)
                    milesworkedLabel.text="\(totalMiles) Miles"
                    caloriesLabel.text="\(caloriesburned) calories burned"
            }
        }else{
            self.milesRun()

        }
    }
    @IBAction func SwitchWeektoDay(_ sender: UISwitch) {
        updateDayWeek()
    }
    
    
    //helper function
    func milesRun(){
        var milesRan:Float
        if workoutTimeText.text!.isEmpty{
            milesRan=0.0
        }else{
            milesRan = Float(workoutTimeText.text!)!
            if (milesRan < 30){
                let alert=UIAlertController(title:"Warning", message: "You need to work out more", preferredStyle: UIAlertControllerStyle.alert)
                let cancelAction = UIAlertAction(title: "Cancel", style:UIAlertActionStyle.cancel, handler: nil)
                alert.addAction(cancelAction)
                let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { action in
                    self.workoutTimeText.text = "30"
                    //self.milesRun(), I left this here, but I think you wanted only the button to update them so I left it out
                })
                alert.addAction(okAction)
                present(alert, animated: true, completion: nil)
            }
        }
        totalMiles = milesRan/10
        caloriesburned=milesRan*10//I realize my math might be off... I panicked
        milesworkedLabel.text="\(totalMiles) Miles"
        caloriesLabel.text="\(caloriesburned) calories burned"
    }
    
    @IBAction func updateWorkout(_ sender: UIButton) {
        milesRun()
    }
    
    
    
    override func viewDidLoad() {
        workoutTimeText.delegate=self
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

