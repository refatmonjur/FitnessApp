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
    var exerciseImage = ""

    var desc = ["Arms": [" Biceps: Dumbell Curl","Biceps: Hammer Curl", "Biceps: Rope Curl","Triceps: Pull Downs","Triceps: Dips"],
                "Chest": ["Barbell Bench Press","Push Ups","Cable Cross Over","Incline Chest Press","Pec Deck"],
                "Shoulders": ["Shoulder Press","Side Lateral Raise", "Arnold Press","Rear Delt Flies","Front Raises"],
                "Back":["Deadlift","Lat Pull Downs","Wide Grip Pull Ups","Barbell Rows","Seated Rows"],
                "Legs": ["Squats","Lunges", "Leg Press","Leg Extension","Leg Curls"],
                "Abs": ["Sit Ups","Hanging Leg Raises", "Reverse crunches","Planks","Russian Twist"]] as [String : Any]
//    var descriptionExercise = ["Arms": "how are you ",
//                "Chest": ["chest "],
//                "Shoulders": ["shoulder"],
//                "Back":["back"],
//                "Legs": ["legs"],
//    "Abs": "abs"] as [String:Any]
    var descriptionExercise = ["Arms": ["how are you "],
                "Chest": ["chest "],
                "Shoulders": ["shoulder"],
                "Back":["back"],
                "Legs": ["legs"],
                "Abs": ["abs"]] as [String : Any]

    var pictures = ["Arms":             ["https://cdn.discordapp.com/attachments/825026368663978068/842967345014243358/unknown.png","https://cdn.discordapp.com/attachments/825026368663978068/842967411006767146/unknown.png","https://cdn.discordapp.com/attachments/825026368663978068/842967244703399976/unknown.png","https://images.squarespace-cdn.com/content/v1/55e406fbe4b0b03c5e7543ae/1495744263624-VZDQYME6JLJV2E3HGNKS/ke17ZwdGBToddI8pDm48kAvr3TmliytZEAgmKhowQotZw-zPPgdn4jUwVcJE1ZvWEtT5uBSRWt4vQZAgTJucoTqqXjS3CfNDSuuf31e0tVEjDHXKoOtsdMHakPWJWwXztDdEu5fNbxic-qaXJNR7x5u3E9Ef3XsXP1C_826c-iU/Cable+Triceps+Rope+Pushdowns","https://cdn.discordapp.com/attachments/825026368663978068/842969497312690186/tricep-dips-with-chair-490x222.png" ],
        
                    "Chest": ["https://cdn.discordapp.com/attachments/825026368663978068/842970444708708382/unknown.png","https://www.aleanlife.com/wp-content/uploads/2021/02/incline-push-up-form.jpg","https://viceversar.files.wordpress.com/2020/04/cable-crossovers..jpg","https://cdn.discordapp.com/attachments/825026368663978068/842972111798009866/unknown.png","https://cdn.discordapp.com/attachments/825026368663978068/842972735324028928/SeatedPecFlyMachine.png"],
            
        "Shoulders":["https://i.pinimg.com/originals/0f/91/4b/0f914be55fbad369e33d2b79bd72d6ce.jpg","https://wl-brightside.cf.tsp.li/resize/728x/jpg/b09/bd5/0db3cb589ba5ed9b44e517b342.jpg","https://cdn.discordapp.com/attachments/825026368663978068/842974566065766471/319b.png","https://cdn.discordapp.com/attachments/825026368663978068/842974939660156948/5e8f4d15f7fa0a5c10ee0aef_dumbbell-rear-delt-fly-picture-anabolic-aliens.png","https://cdn.discordapp.com/attachments/825026368663978068/842975211123900416/0d718d7b292a1951a20fc55db781e236.png"],
        "Back":["https://cdn.discordapp.com/attachments/825026368663978068/842979916165283870/Deadlift-Muscles-Worked.png","https://cdn.discordapp.com/attachments/825026368663978068/842980497079664670/5ea30a99fd7598c59b29d72d_supinated-lat-pulldown-exercise-anabolic-aliens.png","https://cdn.discordapp.com/attachments/825026368663978068/842981033309765652/unknown.png","https://cdn.discordapp.com/attachments/825026368663978068/842981394544459830/5eecfe5a263e085d31855d1f_barbell-row-exercise-anabolic-aliens.png","https://cdn.discordapp.com/attachments/825026368663978068/842982071962042368/seated-v-handle-cable-rows-back-640x332.png"],
                    
        "Legs":["https://www.thetrendspotter.net/wp-content/uploads/2020/04/Barbell-Squat.jpg","https://cdn.discordapp.com/attachments/825026368663978068/842977236453163048/unknown.png","https://cdn.discordapp.com/attachments/825026368663978068/842977594038288444/exercise-16.png","https://cdn.discordapp.com/attachments/825026368663978068/842977978177945610/1636d.png","https://cdn.discordapp.com/attachments/825026368663978068/842978791386644530/1255.png"],
                    
        "Abs":["https://cdn.discordapp.com/attachments/825026368663978068/842983310250868746/exercise-18.png","https://cdn.discordapp.com/attachments/825026368663978068/842983451086422026/exercise-21.png","https://cdn.discordapp.com/attachments/825026368663978068/842983796960919582/unknown.png","https://cdn.discordapp.com/attachments/825026368663978068/842984025912377364/plank-benefits-1024x538.png","https://cdn.discordapp.com/attachments/825026368663978068/842988808471183370/MedBallRussianTwists.png"] as [String]
                    
    ]
    
    
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
        let arrpic = pictures[muscleGroupType]!
        let picUrl3 = URL(string: arrpic[indexPath.row])
        cell2.exerciseImageLabel.af_setImage(withURL: picUrl3!)

        cell2.excerciseName.text = arrayExc[indexPath.row]
        return cell2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        let cell = sender as! UITableViewCell
        let indexPath = excerciseListTableView.indexPath(for: cell)!
        
    
        
        let arrayExc = desc[muscleGroupType] as! [String]
        let picArrExc = pictures[muscleGroupType] as! [String]
//        let arrExercises = descriptionExercise[muscleGroupType] as! [String]
        
        let pictu = picArrExc[indexPath.row]
//        let description = arrExercises[indexPath.row]
        let name = arrayExc[indexPath.row]
        
        let detailsViewController = segue.destination as! exerciseDetailsViewController
        detailsViewController.exerciseNameForDetails = name
        detailsViewController.exercisePictureLabelForDetails = pictu
//        detailsViewController.exercisePictureLabelForDetails = description
        
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
