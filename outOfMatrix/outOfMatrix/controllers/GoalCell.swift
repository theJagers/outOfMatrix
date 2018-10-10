//
//  GoalCell.swift
//  outOfMatrix
//
//  Created by mignoneraffaele on 10/10/2018.
//  Copyright © 2018 TheJagers. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {

    @IBOutlet var name: UILabel!
    @IBOutlet var point: UILabel!
    @IBOutlet var desc: UILabel!
    @IBOutlet var state: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
