//
//  NutritionCell.swift
//  FitnessApp
//
//  Created by Md Islam on 5/16/21.
//

import UIKit

class NutritionCell: UITableViewCell {
    
    
    
    @IBOutlet weak var foodTypeImage: UIImageView!
    
    @IBOutlet weak var foodTypeName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
