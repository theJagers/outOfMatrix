//
//  ViewControllerNewGoal.swift
//  outOfMatrix
//
//  Created by orangeDugongo on 05/10/2018.
//  Copyright © 2018 TheJagers. All rights reserved.
//

import UIKit

class ViewControllerNewGoal: UIViewController {

    @IBOutlet weak var rerollLabel: UILabel!
    @IBOutlet weak var newgoal: UILabel!
    @IBOutlet weak var monthly: UIButton!
    @IBOutlet weak var weekly: UIButton!
    @IBOutlet weak var reroll: UIButton!
    
    let roll1 = UIImage(named: "re-roll")
    
    var goals = ["learn a new song", "spend time with your family", "have a coffe with a friend", "do 30 miuntes of sport", "run for 500 meters"]
    
    var random: Int = 0
    
    @IBAction func reroll(_ sender: Any) {
        random = Int(arc4random()) % goals.count
        newgoal.text = goals[random]
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        reroll.setBackgroundImage(roll1, for: .normal)
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
