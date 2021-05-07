//
//  HomeViewController.swift
//  FitnessApp
//
//  Created by Nikhil Prajith Kumar on 4/19/21.
//

import UIKit
import Parse
import AlamofireImage

class HomeViewController: UIViewController {
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var quoteImageView: UIImageView!
    
    var months = ["January","February","March","April","May","June","July","August","Septemner","October","November","December"]
    var quotes = [[String:Any]]()
    var custom = ["You got this", "If your dreams dont scare you, they are too small", "When you focus on the goods, The goods gets better", "Just Do It", "Great things never comes from comfort zones"]
    var pictures = ["https://images.pexels.com/photos/841131/pexels-photo-841131.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500","https://images.pexels.com/photos/258109/pexels-photo-258109.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260","https://images.pexels.com/photos/66997/pexels-photo-66997.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260","https://images.pexels.com/photos/414171/pexels-photo-414171.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260","https://images.pexels.com/photos/91216/pexels-photo-91216.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260","https://images.pexels.com/photos/2199486/pexels-photo-2199486.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"]

    override func viewDidLoad() {
        super.viewDidLoad()
        let quote = custom[Int.random(in: 0..<custom.count)]
        quoteLabel.text = quote
        let pic = pictures[Int.random(in: 0..<pictures.count)] as String
        let picUrl = URL(string: pic)
        quoteImageView.af_setImage(withURL: picUrl!)
        let currentDateTime = Date()
        let userCalendar = Calendar.current
        let requestedComponents: Set<Calendar.Component>=[
            .year,
            .month,
            .day,
            .hour,
            .minute,
            .second
        ]
        let dateTimeComponents = userCalendar.dateComponents(requestedComponents, from: currentDateTime)
        let hour = String(dateTimeComponents.hour!)
        let minute = String(dateTimeComponents.minute!)
        let time = hour + ":" + minute
        timeLabel.text = time
        let month = dateTimeComponents.month!
        let day = String(dateTimeComponents.day!)
        let year = String(dateTimeComponents.year!)
        let date = months[month-1] + day + ", " + year
        
        
        
    }

    @IBAction func onLogoutButton(_ sender: Any) {
        PFUser.logOut()
        let main = UIStoryboard(name: "Main", bundle: nil)
        let LoginViewController = main.instantiateViewController(withIdentifier: "LoginViewController")
        guard let _ = UIApplication.shared.connectedScenes.first as? UIWindowScene, let delegate = self.view.window?.windowScene?.delegate as? SceneDelegate else {return}
        delegate.window?.rootViewController = LoginViewController
    }
    
}
