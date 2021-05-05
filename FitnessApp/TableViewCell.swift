//
//  TableViewCell.swift
//  FitnessApp
//
//  Created by Nikhil Prajith Kumar on 5/4/21.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var quoteImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
