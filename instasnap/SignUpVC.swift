//
//  SignUpVC.swift
//  instasnap
//
//  Created by Dara Nhep on 5/31/16.
//  Copyright © 2016 Dara Nhep. All rights reserved.
//

import UIKit
import FirebaseAuth

class SignUpVC: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var displayNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func createUserBtnPressed(sender: AnyObject) {
        
        if let email = emailTextField.text where email != "", let displayName = displayNameTextField.text where displayName != "", let pwd = passwordTextField.text where pwd != "" {
            
            FIRAuth.auth()?.createUserWithEmail(email, password: pwd, completion: { (user, error) in
                
                if let error = error {
                    print(error.localizedDescription)
                    return
                    
                } else {
                    
                    FIRAuth.auth()?.signInWithEmail(email, password: pwd, completion: { (user, error) in
                        if let error = error {
                            print(error.localizedDescription)
                        } else {
                            if let user = FIRAuth.auth()?.currentUser {
                                self.signedIn(user)
                            }
                        }
                    })
                }
            })
            
        } else {
            //alert error messages here
        }
        
    }
    
    func signedIn(user: FIRUser) {
        performSegueWithIdentifier("createUserSignIn", sender: nil)
    }

}
