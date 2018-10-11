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
    @IBOutlet weak var pointD: UILabel!
    @IBOutlet weak var pointW: UILabel!
    @IBOutlet weak var pointM: UILabel!
    @IBOutlet weak var changeIcon: UIButton!
    
    var risultatod: Int = 0
    var nuovo_risultatod: Int = 0
    
    var risultatow: Int = 0
    var nuovo_risultatow: Int = 0
    
    var risultatom: Int = 0
    var nuovo_risultatom: Int = 0
    
    let change = UIImage(named: "modifica")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeIcon.setBackgroundImage(change, for: .normal)
        sommaRisultatiMensili()
        sommaRisultatiGiornalieri()
        sommaRisultatiSettimanali()
        // Do any additional setup after loading the view.
    }
    
    func sommaRisultatiGiornalieri() {
        risultatod = risultatod + nuovo_risultatod
        let value = "\(risultatod)" as String
        pointD.text = value
    }
    
    func sommaRisultatiSettimanali() {
        risultatow = risultatow + nuovo_risultatow
        let value = "\(risultatow)" as String
        pointW.text = value
    }
    
    func sommaRisultatiMensili() {
        risultatom = risultatom + nuovo_risultatom
        let value = "\(risultatom)" as String
        pointM.text = value
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
