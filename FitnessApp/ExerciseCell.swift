//
//  ExerciseCell.swift
//  FitnessApp
//
//  Created by Nikhil Prajith Kumar on 5/8/21.
//

import UIKit

class ExerciseCell: UITableViewCell {

    @IBOutlet weak var mImage: UIImageView!
    
    @IBOutlet weak var mCount: UILabel!
    @IBOutlet weak var mType: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
