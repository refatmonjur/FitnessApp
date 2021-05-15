//
//  exerciseDetailsViewController.swift
//  FitnessApp
//
//  Created by Nikhil Prajith Kumar on 5/14/21.
//

import UIKit

class exerciseDetailsViewController: UIViewController {

    var exerciseNameForDetails = ""
    var exercisePictureLabelForDetails = ""
    
    var exerciseDesciptionLabelForDetails = ""
    
//    var descriptionExercise = ["Arms": ["how are you "],
//                "Chest": ["chest "],
//                "Shoulders": ["shoulder"],
//                "Back":["back"],
//                "Legs": ["legs"],
//    "Abs": "abs"] as [String:Any]
//    var descriptionExercise = ["Arms": [" Biceps: Dumbell Curl","Biceps: Hammer Curl", "Biceps: Rope curl","Triceps: Pull Downs","Triceps: Dips"],
//                "Chest": ["Barbell Bench Press","Push Ups","Cable Cross Over","Incline Chest Press","Pec Deck"],
//                "Shoulders": ["Shoulder Press","Side Lateral Raise", "Arnold Press","Rear Delt Flies","Front Raises"],
//                "Back":["Deadlift","Lat Pull Downs","Wide Grip Pull Ups","Barbell Rows","Seated Rows"],
//                "Legs": ["Squats","Lunges", "Leg Press","Leg Extension","Leg Curls"],
//                "Abs": ["Sit Ups","Hanging Leg Raises", "Reverse crunches","Planks","Russian Twist"]] as [String : Any]
    
    var descriptionExercise = [" Biceps: Dumbell Curl": " hello",
                               "Biceps: Hammer Curl" : "fjsdkfjsdf",
                               "Biceps: Rope curl": "ui",
                                "Triceps: Pull Downs": "hjkk",
                                "Triceps: Dips": "you",
                                "Barbell Bench Press": "mmm",
                                "Push Ups": " hi",
                                "Cable Cross Over": "cable",
                                "Incline Chest Press": "w",
                                "Pec Deck": "u",
                                "Shoulder Press": "ui",
                                "Side Lateral Raise": "ui",
                                "Arnold Press": "ui",
                                "Rear Delt Flies": "yeah",
                                "Front Raises": "kfkdjfds",
                                "Deadlift": "ui",
                                "Lat Pull Downs": "ui",
                                "Wide Grip Pull Ups": "ui",
                                "Barbell Rows": "ui",
                                "Seated Rows": "ui",
                                "Squats":"faksdkaksd",
                                "Lunges":"sdfkaskdkdf",
                                "Leg Press":"sakfsakio",
                                "Leg Extension":"rieiwioerqw",
                                "Leg Curls":"erooeqwoieqr",
                                "Sit Ups":"ewrofooewr",
                                "Hanging Leg Raises":"qerwiuuieqwr",
                                "Reverse crunches":"qeroewiri",
                                "Planks":"oeofefjasdof",
                                "Russian Twist":"pfoasdofads"
                                ]
    
                                
                               
    
                               
    
    
    
    
    @IBOutlet weak var exerciseNameLabel: UILabel!
    
    @IBOutlet weak var ExerciseImageLabel: UIImageView!
    
    
    @IBOutlet weak var ExerciseDescriptionLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        exerciseNameLabel.text = exerciseNameForDetails
        let picUrl4 = URL(string: exercisePictureLabelForDetails)
        ExerciseImageLabel.af_setImage(withURL: picUrl4!)
        //synopsisLabel.text = movie["overview"] as?String
   ExerciseDescriptionLabel.text = descriptionExercise[exerciseNameForDetails] as?String
        
    }
    



}
