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
    
    let foodType = ["Banana Strawberry Protein Shake","Smothie Bowl Recipe","Chicken","Oatmeal with fruits","Chie Pudding","Egg Omlet"]
    let TypePics = ["https://cdn.discordapp.com/attachments/825026368663978068/845139380368834590/strawberry-banana-smoothie-1-4.png","https://cdn.discordapp.com/attachments/825026368663978068/845135931404845056/5-minute-super-berry-smoothie-bowl-10.png","https://cdn.discordapp.com/attachments/825026368663978068/845136271286206474/10-ways-to-make-chicken-taste-great-4-700xh.png","https://cdn.discordapp.com/attachments/825026368663978068/845136538903117824/Recipe-for-Overnight-Oat-Meal-Prep-Bowls.png","https://cdn.discordapp.com/attachments/825026368663978068/845136685960134666/classic-vanilla-chia-pudding-6.png","https://cdn.discordapp.com/attachments/825026368663978068/845137352333983744/0siQaM1MqTv8KwCQYOv41F.png"]
    let NutritionCalories = ["200 - 300 Calories   8 - 10Oz","400 - 450 Calories   1 bowl","200 - 260 Calories   140g ","190 Calories   1 cup","160 - 250 calories with toppings","94 Calories  61g"]

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
        cellFive.caloriesPerReceipe.text = NutritionCalories[indexPath.row]
        return cellFive

    }

}
