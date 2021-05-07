//
//  HomeViewController.swift
//  FitnessApp
//
//  Created by Nikhil Prajith Kumar on 4/19/21.
//

import UIKit
import Parse

class HomeViewController: UIViewController {
    
    
    @IBOutlet weak var quoteLabel: UILabel!
    
    
    var quotes = [[String:Any]]()
    var custom = ["you got this", "If your dreams dont scare you, they are too small", "when you focus on the goods, the goods gets better", "Just Do It", "great things never comes from comfort zones"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let quote = custom[Int.random(in: 0..<custom.count)]
        quoteLabel.text = quote
    }

    @IBAction func onLogoutButton(_ sender: Any) {
        PFUser.logOut()
        let main = UIStoryboard(name: "Main", bundle: nil)
        let LoginViewController = main.instantiateViewController(withIdentifier: "LoginViewController")
        guard let _ = UIApplication.shared.connectedScenes.first as? UIWindowScene, let delegate = self.view.window?.windowScene?.delegate as? SceneDelegate else {return}
        delegate.window?.rootViewController = LoginViewController
    }
    
}
