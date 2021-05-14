//
//  LoginViewController.swift
//  FitnessApp
//
//  Created by Nikhil Prajith Kumar on 4/19/21.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let paddingView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 20))
        passwordField.leftView = paddingView
        passwordField.leftViewMode = .always
        let paddingView2: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 20))
        usernameField.leftView = paddingView2
        usernameField.leftViewMode = .always
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func signIn(_ sender: Any) {
        let username = usernameField.text!
        let password = passwordField.text!
        PFUser.logInWithUsername(inBackground: username, password: password) { (user, error) in
            if user != nil{
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            } else{
                print("Error: \(String(describing: error?.localizedDescription))")
            }
        }
    }
    
    @IBAction func signUp(_ sender: Any) {
        let user = PFUser()
        user.username = usernameField.text
        user.password = passwordField.text
        user.signUpInBackground { (success, error) in
            if success{
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            } else{
                print("Error: \(String(describing: error?.localizedDescription))")
            }
        }
        
    }
}
