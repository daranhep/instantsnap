//
//  SecondViewController.swift
//  instasnap
//
//  Created by Dara Nhep on 5/31/16.
//  Copyright © 2016 Dara Nhep. All rights reserved.
//

import UIKit
<<<<<<< HEAD
import FirebaseAuth
=======
>>>>>>> 8af9e5040e5a5601f0d5006c63ed3b5be231217e

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
<<<<<<< HEAD
    
    @IBAction func logoutBtnPressed(sender: UIButton) {
        try! FIRAuth.auth()!.signOut()
        performSegueWithIdentifier("logOut", sender: nil)
    }
=======
>>>>>>> 8af9e5040e5a5601f0d5006c63ed3b5be231217e


}

