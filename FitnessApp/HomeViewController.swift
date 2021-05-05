//
//  HomeViewController.swift
//  FitnessApp
//
//  Created by Nikhil Prajith Kumar on 4/19/21.
//

import UIKit
import Parse
import AVFoundation

class HomeViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var quotes = [[String:Any]]()
    @IBOutlet weak var quoteTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        fetchPostData { (posts) in
            for post in posts{
                print(post.text!)
                
            }
        }
    
        
    }
    func fetchPostData(completionHandler: @escaping ([Post]) -> Void){
        let url = URL(string:"https://type.fit/api/quotes")!
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else {return}
            do {
                let postsData = try JSONDecoder().decode([Post].self, from: data)
                completionHandler(postsData)
            }
            catch{
                let error = error
                print (error.localizedDescription)
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func onLogoutButton(_ sender: Any) {
        PFUser.logOut()
        let main = UIStoryboard(name: "Main", bundle: nil)
        let LoginViewController = main.instantiateViewController(withIdentifier: "LoginViewController")
        guard let _ = UIApplication.shared.connectedScenes.first as? UIWindowScene, let delegate = self.view.window?.windowScene?.delegate as? SceneDelegate else {return}
        delegate.window?.rootViewController = LoginViewController
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quotes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        return cell
    }
}
