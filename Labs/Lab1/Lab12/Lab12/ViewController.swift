//
//  ViewController.swift
//  Lab12
//
//  Created by Laney Winkler on 9/11/18.
//  Copyright © 2018 Laney Winkler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var seasonImage: UIImageView!
    @IBOutlet weak var seasonQuote: UILabel!
    
    @IBAction func seasonButton(_ sender: UIButton) {
        if sender.tag == 1{
            seasonImage.image=UIImage(named: "summer")
            seasonQuote.text="\"Summer is the annual permission slip to be lazy. To do nothing and have it count for something. To lie in the grass and count the stars. To sit on a branch and study the clouds.\" -Regina Brett"
        }
        if sender.tag == 2{
            seasonImage.image=UIImage(named: "fall")
            seasonQuote.text="\"Delicious autumn! My very soul is wedded to it, and if I were a bird I would fly about the earth seeking the successive autumns.\" -George Eliot"
        }
        if sender.tag == 3{
            seasonImage.image=UIImage(named: "winter")
            seasonQuote.text="\"In winter, the stars seem to have rekindled their fires, the moon achieves a fuller triumph, and the heavens wear a look of a more exalted simplicity.\" -John Burroughs"
        }
        if sender.tag == 4{
            seasonImage.image=UIImage(named: "spring")
            seasonQuote.text="\"In the spring, at the end of the day, you should smell like dirt.\" -Margaret Atwood"
        }
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

