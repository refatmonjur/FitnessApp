//
//  TypeCellTableViewCell.swift
//  FitnessApp
//
//  Created by Nikhil Prajith Kumar on 5/14/21.
//

import UIKit

class TypeCellTableViewCell: UITableViewCell {

    @IBOutlet weak var excerciseName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
