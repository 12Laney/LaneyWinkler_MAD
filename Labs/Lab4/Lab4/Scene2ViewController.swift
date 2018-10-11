//
//  Scene2ViewController.swift
//  Lab4
//
//  Created by Laney Winkler on 10/9/18.
//  Copyright © 2018 Laney Winkler. All rights reserved.
//

import UIKit

class Scene2ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var userIdea: UITextField!
    @IBOutlet weak var userDate: UITextField!
    @IBOutlet weak var userSigned: UITextField!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "TieRemembered"{
            let scene1ViewController = segue.destination as! ViewController
            if userIdea.text!.isEmpty == false{
                scene1ViewController.user.BeRemembered=userIdea.text
            }
            if userDate.text!.isEmpty == false{
                scene1ViewController.user.DateRemembered=userDate.text
            }
            if userSigned.text!.isEmpty == false{
                scene1ViewController.user.SignatureUser=userSigned.text
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userIdea.delegate=self
        userDate.delegate=self
        userSigned.delegate=self
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
