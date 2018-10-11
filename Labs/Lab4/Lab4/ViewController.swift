//
//  ViewController.swift
//  Lab4
//
//  Created by Laney Winkler on 10/9/18.
//  Copyright © 2018 Laney Winkler. All rights reserved.
//correct version

import UIKit

class ViewController: UIViewController {
    //method to unwind to view
    
    @IBOutlet weak var ideaRemembered: UILabel!
    @IBOutlet weak var dateRemembered: UILabel!
    @IBOutlet weak var signedName: UILabel!
    var user = Remember()
    let filename = "encourage.plist"
    
    
    @IBAction func unwindSegue (_ segue:UIStoryboardSegue){
        ideaRemembered.text=user.BeRemembered
        dateRemembered.text=user.DateRemembered
        signedName.text=user.SignatureUser
        
    }
    func dataFileURL(_ filename:String) -> URL?{
        let urls = FileManager.default.urls(for:.documentDirectory, in: .userDomainMask)
        var url : URL?
        url = urls.first?.appendingPathComponent(filename)
        return url
    }
    override func viewDidLoad() {
        let fileURL = dataFileURL(filename)
        if FileManager.default.fileExists(atPath: (fileURL?.path)!){
            let url = fileURL!
            do{
                let data = try Data(contentsOf: url)
                let decoder = PropertyListDecoder()
                user = try decoder.decode(Remember.self, from: data)
                ideaRemembered.text=user.BeRemembered
                dateRemembered.text=user.DateRemembered
                signedName.text=user.SignatureUser
            } catch {
                print ("no file")
            }
        }else{
            print("file does not exist")
        }
        let app = UIApplication.shared
        NotificationCenter.default.addObserver(self, selector: #selector(self.applicationWillResignActive(_:)), name: Notification.Name.UIApplicationWillResignActive, object: app)
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
   @objc func applicationWillResignActive(_ notification: Notification){
            let fileURL = dataFileURL(filename)
            let encoder = PropertyListEncoder()
            encoder.outputFormat = .xml
            do{
                let plistData = try encoder.encode(user)
                try plistData.write(to: fileURL!)
            } catch{
                print("write error")
            }
        }
        


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

