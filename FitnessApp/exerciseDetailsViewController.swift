//
//  exerciseDetailsViewController.swift
//  FitnessApp
//
//  Created by Nikhil Prajith Kumar on 5/14/21.
//

import UIKit

class exerciseDetailsViewController: UIViewController {

    var exerciseNameForDetails = ""
    
    @IBOutlet weak var exerciseNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        exerciseNameLabel.text = exerciseNameForDetails
        // Do any additional setup after loading the view.
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
