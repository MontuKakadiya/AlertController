//
//  ViewController.swift
//  Alert Message in UIAlertController
//
//  Created by iFlame on 7/3/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func alertview(_ sender: AnyObject)
    {
        let myalert = UIAlertController(title: "Alert", message: "Are you sure?", preferredStyle: UIAlertControllerStyle.alert);
        
        let okaction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default){(ACTION) in
            print("Ok Button Tapped")
        }
        
        let cancelaction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel){(ACTION) in
            print("Cancel Button Tapped")
        }
        
        let deletaction = UIAlertAction(title: "Yes, Delete this!", style: UIAlertActionStyle.destructive){(ACTION) in
            print("Delete Button Tapped")
        }

        myalert.addAction(okaction)
        myalert.addAction(cancelaction)
        myalert.addAction(deletaction)
        
        self.present(myalert, animated: true, completion: nil);
    }


}


