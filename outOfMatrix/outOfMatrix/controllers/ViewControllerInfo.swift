//
//  ViewControllerInfo.swift
//  outOfMatrix
//
//  Created by orangeDugongo on 05/10/2018.
//  Copyright © 2018 TheJagers. All rights reserved.
//

import UIKit

class ViewControllerInfo: UIViewController {
    
    //nome identificativo dell'articolo
    var nome: String?
    
    //titolo dell'articolo che sarà sulla label
    @IBOutlet weak var titoloArticolo: UILabel!
    
    //descrizione (contenuto) dell'articolo che sarà nel textView
    @IBOutlet weak var descrizioneArticolo: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

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
