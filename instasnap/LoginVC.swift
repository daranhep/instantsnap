//
//  LoginVC.swift
//  instasnap
//
//  Created by Dara Nhep on 5/31/16.
//  Copyright © 2016 Dara Nhep. All rights reserved.
//

import UIKit
import FirebaseAuth
import FBSDKLoginKit
import FBSDKCoreKit


class LoginVC: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        if let user = FIRAuth.auth()?.currentUser {
            signedIn(user)
            print("You are still logged in")
        }
        
    }
    
    
    @IBAction func loginBtnPressed(sender: AnyObject) {
        
        if let email = emailTextField.text where email != "", let pwd = passwordTextField.text where pwd != "" {
            
            FIRAuth.auth()?.signInWithEmail(email, password: pwd, completion: { (user, error) in
                if let error = error {
                    print(error.localizedDescription)
                } else {
                    print("You are in")
                    
                    if let user = FIRAuth.auth()?.currentUser {
                        self.signedIn(user)
                    } else {
                        //error desc here
                    }
                    
                }
            })
            
        } else {
            print("login failed")
        }

        
    }

    @IBAction func fbLoginBtnPressed(sender: AnyObject) {
        
        
        let faceboookLogin = FBSDKLoginManager()
        
        faceboookLogin.logInWithReadPermissions(["email"], fromViewController: self) { (facebookResult, facebookError) in
            if facebookError != nil {
                
                print("Facebook login failed. Error \(facebookError)")
                
            } else if facebookResult.isCancelled {
                
                print("Facebook login was cancelled")
                
            } else {
                
                print("you are in")
                
                let credential = FIRFacebookAuthProvider.credentialWithAccessToken(FBSDKAccessToken.currentAccessToken().tokenString)
                FIRAuth.auth()?.signInWithCredential(credential, completion: { (user, error) in
                    
                    if let error = error {
                        print("There was a problem authenticating \(error)")
                    } else {
                        
                        print("you have authenticated with facebook \(user)")
                        self.performSegueWithIdentifier("loggedIn", sender: nil)
                    }
                    
                    
                })
                
            }
        }
        
    }
    
    func signedIn(user: FIRUser) {
        performSegueWithIdentifier("loggedIn", sender: nil)
    }

}
