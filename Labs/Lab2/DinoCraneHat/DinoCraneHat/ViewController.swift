//
//  ViewController.swift
//  DinoCraneHat
//
//  Created by Laney Winkler on 9/17/18.
//  Copyright © 2018 Laney Winkler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeLabel: UILabel!
    @IBOutlet weak var DinoCraneImage: UIImageView!
    @IBOutlet weak var DinoCraneControl: UISegmentedControl!
    @IBOutlet weak var HatSwitch: UISwitch!
    @IBOutlet weak var CapitalSwitch: UISwitch!
    //originally I was going to change the color of the font, but
    //that didn't make as much sense for my app, as it is about
    //getting excited for cranes and dinos wearing hats, so I
    //changed it to font size instead. I didn't want to break
    //anything by changing names.
    @IBOutlet weak var TextColorControl: UISlider!
    
    func changeDinoCrane() {
        if DinoCraneControl.selectedSegmentIndex == 0 {
            changeLabel.text="Dinosaur"
            DinoCraneImage.image=UIImage(named: "dinoNoHat")
           
        }
        else if DinoCraneControl.selectedSegmentIndex == 1 {
            changeLabel.text="Crane"
            DinoCraneImage.image=UIImage(named: "CraneNoHat")
            
        }
    }
    //for excitment
    func fixCaps(){
        if CapitalSwitch.isOn {
            changeLabel.text=changeLabel.text?.uppercased()
            changeLabel.textColor = UIColor.red
            
        } else {
            changeLabel.text=changeLabel.text?.lowercased()
        }
    }
    func dinoWithHat(){
        changeLabel.text="Dinosaur with hat"
        DinoCraneImage.image=UIImage(named: "dinoHat")
    }
    func craneWithHat(){
        changeLabel.text="Crane with hat"
        DinoCraneImage.image=UIImage(named: "CraneHat")
    }
    func addHat() {
        if HatSwitch.isOn{
            if DinoCraneControl.selectedSegmentIndex == 0 {
                dinoWithHat()
            }else if DinoCraneControl.selectedSegmentIndex == 1 {
                craneWithHat()
            }
        }
        else{//if changeDinoCrane is OFF
              changeDinoCrane()
            }
        }

    @IBAction func changeImage(_ sender: UISegmentedControl) {
        changeDinoCrane()
        fixCaps()
    }

    
    @IBAction func changeCaps(_ sender: UISwitch) {
        fixCaps()
    }
    
    @IBAction func HatControl(_ sender: UISwitch) {
        addHat()
    }
    //Again, the color slide actually changes the font size of my
    //title, not the color because it made more sense for my
    //app and I didn't want to break anything by renaming.
    @IBAction func colorSlide(_ sender: UISlider) {
        let excitmentSize=sender.value
        let excitmentFloat=CGFloat(excitmentSize)
        changeLabel.font=UIFont.systemFont(ofSize: excitmentFloat)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

