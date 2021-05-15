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

    var desc = ["Arms": ["Curls","Arm Circles", "Dumbell Curls","Precher Curls","Hammer Curls"],
                "Chest": ["Chest Press","Push-Ups", "Dips","Cables","Pec Deck"],
                "Shoulders": ["Fly","q", "err","rer","aewd"],
                "Legs": ["Biceps","Triceps", "PushDown","4","5"],
                "Abs.": ["Biceps","Triceps", "PushDown","4","5"]] as [String : Any]
    /*
     make a dictionary with the keys as the muscleGroupType
     
     */
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        excerciseListTableView.dataSource = self
        excerciseListTableView.delegate = self

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell2 = tableView.dequeueReusableCell(withIdentifier: "TypeCellTableViewCell") as! TypeCellTableViewCell
        let arrayExc = desc[muscleGroupType] as! [String]
        cell2.excerciseName.text = arrayExc[indexPath.row]
        return cell2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        let cell = sender as! UITableViewCell
        let indexPath = excerciseListTableView.indexPath(for: cell)!
        
        let arrayExc = desc[muscleGroupType] as! [String]
        
        let name = arrayExc[indexPath.row]
        
        let detailsViewController = segue.destination as! exerciseDetailsViewController
        detailsViewController.exerciseNameForDetails = name
        
        //unselect the moview when returning from the movieDetails
        excerciseListTableView.deselectRow(at: indexPath, animated: true)
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
