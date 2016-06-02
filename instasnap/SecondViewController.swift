//
//  SecondViewController.swift
//  instasnap
//
//  Created by Dara Nhep on 5/31/16.
//  Copyright © 2016 Dara Nhep. All rights reserved.
//

import UIKit
import FirebaseAuth

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func logoutBtnPressed(sender: UIButton) {
        try! FIRAuth.auth()!.signOut()
        performSegueWithIdentifier("logOut", sender: nil)
    }


}

