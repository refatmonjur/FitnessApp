//
//  NutritionViewController.swift
//  FitnessApp
//
//  Created by Md Islam on 5/16/21.
//

import UIKit
import Parse
import AlamofireImage


class NutritionViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
  
    
    @IBOutlet weak var NutritionTable: UITableView!
    
    let foodType = ["Carbohydrates","Protein","Fibers","Minerals","Fats","Vitamins"]
    let TypePics = ["https://cdn.discordapp.com/attachments/825026368663978068/842984524026871818/192-1922582_russian-twists-muscle-exercise.png","https://cdn.discordapp.com/attachments/825026368663978068/842984524026871818/192-1922582_russian-twists-muscle-exercise.png","https://cdn.discordapp.com/attachments/825026368663978068/842984524026871818/192-1922582_russian-twists-muscle-exercise.png","https://cdn.discordapp.com/attachments/825026368663978068/842984524026871818/192-1922582_russian-twists-muscle-exercise.png","https://cdn.discordapp.com/attachments/825026368663978068/842984524026871818/192-1922582_russian-twists-muscle-exercise.png","https://cdn.discordapp.com/attachments/825026368663978068/842984524026871818/192-1922582_russian-twists-muscle-exercise.png"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        NutritionTable.dataSource = self
        NutritionTable.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellFive = tableView.dequeueReusableCell(withIdentifier: "NutritionCell") as! NutritionCell
    let picUrlFive = URL(string: TypePics[indexPath.row])
        cellFive.foodTypeImage.af_setImage(withURL: picUrlFive!)
        cellFive.foodTypeName.text = foodType[indexPath.row]

        return cellFive

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

//        let cell = sender as! UITableViewCell
//        let indexPath = workoutTable.indexPath(for: cell)!
//
//        let muscle = muscleGroups[indexPath.row]
//
//        let detailsViewController = segue.destination as! workoutDetailsViewController
//        detailsViewController.muscleGroupType = muscle
//
//        //unselect the moview when returning from the movieDetails
//        workoutTable.deselectRow(at: indexPath, animated: true)
    }

}
