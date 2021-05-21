//
//  HomeViewController.swift
//  FitnessApp
//
//  Created by Nikhil Prajith Kumar on 4/19/21.
//

import UIKit
import Parse
import AlamofireImage
import AVFoundation

class HomeViewController: UIViewController {
     var seconds = 30
    var timer = Timer()
    @IBOutlet weak var openTimerLabel: UIButton!
    @IBOutlet weak var timerBottomConstraint: NSLayoutConstraint!
    var audioPlayer = AVAudioPlayer()
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var quoteImageView: UIImageView!
    
    @IBOutlet weak var usernameBox: UILabel!
    
    
    @IBOutlet weak var secondLabel: UILabel!
    
    @IBOutlet weak var sliderOutlet: UISlider!
    
    @IBAction func sliderAction(_ sender: UISlider) {
        seconds = Int(sender.value)
        secondLabel.text = String(seconds) + " seconds"
    }
    
    
    @IBOutlet weak var startOutlet: UIButton!
    
    @IBAction func start(_ sender: UIButton) {
//        sliderOutlet.setValue(30, animated: true)
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(HomeViewController.counter), userInfo: nil, repeats: true)
//        sliderOutlet.isHidden = true
//        sliderOutlet.value = Float(String (seconds) as Int)
        startOutlet.isHidden = true
    }
    @objc func counter (){
        seconds = seconds - 1
        secondLabel.text = String(seconds) + "  seconds"
        
        if (seconds == 0){
            timer.invalidate()
//            sliderOutlet.isHidden = false
            startOutlet.isHidden = false
            audioPlayer.play()
            secondLabel.text = "Times Up"
        }
    }
    
    
    
    @IBOutlet weak var stopOutlet: UIButton!
    
    @IBAction func stop(_ sender: UIButton) {
        timer.invalidate()
        seconds = 30
        sliderOutlet.setValue(30, animated: true)
        secondLabel.text = String(seconds) + "seconds"
        audioPlayer.stop()
//        sliderOutlet.isHidden = false
        startOutlet.isHidden = false
    }
    
    var months = ["January","February","March","April","May","June","July","August","Septemner","October","November","December"]
    var quotes = [[String:Any]]()
    var custom = ["You got this", "If your dreams dont scare you, they are too small", "When you focus on the goods, The goods gets better", "Just Do It", "Great things never comes from comfort zones"]
    var pictures = ["https://images.pexels.com/photos/7828678/pexels-photo-7828678.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500","https://media.discordapp.net/attachments/825026368663978068/845121066279895100/wp6614076-blue-aesthetic-horizontal-wallpapers.jpg?width=1868&height=1051","https://images.pexels.com/photos/2646237/pexels-photo-2646237.jpeg?cs=srgb&dl=pexels-dexter-fernandes-2646237.jpg&fm=jpg","https://images.pexels.com/photos/1464474/pexels-photo-1464474.jpeg?cs=srgb&dl=pexels-henry-%26-co-1464474.jpg&fm=jpg","https://cdn.discordapp.com/attachments/825026368663978068/845121823947227186/WallpaperDog-92457.jpg","https://images.pexels.com/photos/7828692/pexels-photo-7828692.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"]

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
        let date = months[month-1] + " " + day + ", " + year
        dateLabel.text = date
        
        do {
            let audioPath = Bundle.main.path(forResource: "audioSound", ofType: ".mp3" )
            try audioPlayer = AVAudioPlayer(contentsOf: URL(fileURLWithPath:  audioPath!))
        }
        catch{
            
        }
        
        usernameBox.text = PFUser.current()!.username! as String
        
        
    }

    @IBAction func onLogoutButton(_ sender: Any) {
        PFUser.logOut()
        let main = UIStoryboard(name: "Main", bundle: nil)
        let LoginViewController = main.instantiateViewController(withIdentifier: "LoginViewController")
        guard let _ = UIApplication.shared.connectedScenes.first as? UIWindowScene, let delegate = self.view.window?.windowScene?.delegate as? SceneDelegate else {return}
        delegate.window?.rootViewController = LoginViewController
    }
    
    @IBAction func openTimer(_ sender: Any) {
        if(timerBottomConstraint.constant == -24){
            timerBottomConstraint.constant = -385
            openTimerLabel.setTitle("Open Timer", for: .normal)
 
        }
        else{
            timerBottomConstraint.constant = -24
            openTimerLabel.setTitle("Close Timer", for: .normal)

        }
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
        
    }
}
