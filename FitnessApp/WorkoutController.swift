//
//  WorkoutController.swift
//  FitnessApp
//
//  Created by Nikhil Prajith Kumar on 5/8/21.
//

import UIKit
import Parse
import AlamofireImage

class WorkoutController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    @IBOutlet weak var workoutTable: UITableView!
    
    
    let muscleGroups = ["Arms","Chest","Shoulders","Legs","Back","Abs."]
    let musclePics = ["https://img3.goodfon.com/wallpaper/nbig/9/75/dumbbell-arms-man-fitness-gym.jpg","https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/forge-an-iron-chest-1451573101.jpg","https://hips.hearstapps.com/ame-prod-menshealth-assets.s3.amazonaws.com/main/thumbs/34900/boulder-shoulders.jpg?crop=1xw:0.6652542372881356xh;center,top&resize=480:*","https://cdn2.omidoo.com/sites/default/files/imagecache/1200x630/images/headline/201701/itslegday.jpg","https://cimg1.ibsrv.net/cimg/www.fitday.com/693x350_85-1/5/back-workout-129005.jpg","https://img4.goodfon.com/wallpaper/nbig/8/4e/bodibilder-press-abs-muscle-myshtsy-poza-bodybuilder-vorkaut.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        workoutTable.dataSource = self
        workoutTable.delegate = self
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        muscleGroups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ExerciseCell") as! ExerciseCell
        let picUrlTwo = URL(string: musclePics[indexPath.row])
        cell.mImage.af_setImage(withURL: picUrlTwo!)
        cell.mType.text = muscleGroups[indexPath.row]
        
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        let cell = sender as! UITableViewCell
        let indexPath = workoutTable.indexPath(for: cell)!
        
        let muscle = muscleGroups[indexPath.row]
        
        let detailsViewController = segue.destination as! workoutDetailsViewController
        detailsViewController.muscleGroupType = muscle
        
        //unselect the moview when returning from the movieDetails
        workoutTable.deselectRow(at: indexPath, animated: true)
    }

}
