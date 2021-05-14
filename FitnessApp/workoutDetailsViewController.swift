//
//  workoutDetailsViewController.swift
//  FitnessApp
//
//  Created by Nikhil Prajith Kumar on 5/14/21.
//

import UIKit
import Parse
import AlamofireImage

class workoutDetailsViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    


    @IBOutlet weak var excerciseListTableView: UITableView!
    
    
    var muscleGroupType = ""

    var desc = ["Arms": ["Biceps","Triceps", "PushDown"],
                "Chest": "Access forbidden",
                "Shoulders": "File not found",
                "Legs": "Internal server error",
                "Abs.": "testubg"] as [String : Any]
    /*
     make a dictionary with the keys as the muscleGroupType
     
     */
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        excerciseListTableView.dataSource = self
        excerciseListTableView.delegate = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
