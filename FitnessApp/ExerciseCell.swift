//
//  ExerciseCell.swift
//  FitnessApp
//
//  Created by Nikhil Prajith Kumar on 5/8/21.
//

import UIKit

class ExerciseCell: UITableViewCell {
    @IBOutlet weak var muscleImage: UIImageView!
    @IBOutlet weak var muscleName: UILabel!
    @IBOutlet weak var muscleCount: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
