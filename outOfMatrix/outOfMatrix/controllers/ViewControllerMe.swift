//
//  ViewControllerMe.swift
//  outOfMatrix
//
//  Created by orangeDugongo on 05/10/2018.
//  Copyright © 2018 TheJagers. All rights reserved.
//

import UIKit

class ViewControllerMe: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameProfile: UILabel!
    @IBOutlet weak var pointD: UILabel!
    @IBOutlet weak var pointW: UILabel!
    @IBOutlet weak var pointM: UILabel!
    @IBOutlet weak var changeIcon: UIButton!
    
    
    let change = UIImage(named: "modifica")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeIcon.setBackgroundImage(change, for: .normal)
        // Do any additional setup after loading the view.
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
