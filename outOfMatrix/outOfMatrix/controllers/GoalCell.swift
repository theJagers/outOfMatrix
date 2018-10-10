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
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
