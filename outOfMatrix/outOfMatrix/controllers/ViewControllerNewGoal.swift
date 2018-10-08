//
//  ViewControllerNewGoal.swift
//  outOfMatrix
//
//  Created by orangeDugongo on 05/10/2018.
//  Copyright © 2018 TheJagers. All rights reserved.
//

import UIKit

class ViewControllerNewGoal: UIViewController {
   
    @IBOutlet weak var cambia: UISegmentedControl!
    @IBOutlet weak var rerollLabel: UILabel!
    @IBOutlet weak var newgoal: UILabel!
    @IBOutlet weak var reroll: UIButton!
    
    let roll1 = UIImage(named: "re-roll")
    
    var goalsd = ["learn a new song", "spend time with your family", "have a coffe with a friend", "do 30 miuntes of sport", "run for 500 meters"]
    
    var goalsw = ["leggi una rivista", "scrivi una lettera ad un tuo amico", "segui un incontro del tuo sport preferito in tv con un amico", "invita un amico per ascoltare insieme la compilation del vostro gruppo preferisto"]
    
    var goalsm = ["assisti ad un incontro del tuo sport preferito", "impara a memoria la ricetta di 3 rustici", "ottieni l'attestato hccp", "assiti ad un concerto"]
    
    var random: Int = 0
    var numero: Int = 0
    
    @IBAction func cambiaValore(_ sender: UISegmentedControl) {
        if cambia.selectedSegmentIndex == 0 {
            numero = 0
            random = Int(arc4random()) % goalsd.count
            newgoal.text = goalsd[random]
            rerollLabel.text = "You can generate another goal. Just once"
            
        }
        if cambia.selectedSegmentIndex == 1 {
            numero = 1
            random = Int(arc4random()) % goalsw.count
            newgoal.text = goalsw[random]
            rerollLabel.text = "You can generate another goal. Just three times"
        }
        if cambia.selectedSegmentIndex == 2 {
            numero = 2
            random = Int(arc4random()) % goalsm.count
            newgoal.text = goalsm[random]
            rerollLabel.text = "You can generate another goal. Just five times"
        }
    }
    
    
    @IBAction func reroll(_ sender: Any) {
        if numero == 0 {
            random = Int(arc4random()) % goalsd.count
            newgoal.text = goalsd[random]
        }
        if numero == 1 {
            random = Int(arc4random()) % goalsw.count
            newgoal.text = goalsw[random]
        }
        if numero == 2 {
            random = Int(arc4random()) % goalsm.count
            newgoal.text = goalsm[random]
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        reroll.setBackgroundImage(roll1, for: .normal)
        random = Int(arc4random()) % goalsd.count
        newgoal.text = goalsd[random]
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
