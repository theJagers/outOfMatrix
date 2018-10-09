//
//  ViewControllerInfo.swift
//  outOfMatrix
//
//  Created by orangeDugongo on 05/10/2018.
//  Copyright © 2018 TheJagers. All rights reserved.
//

import UIKit


class ViewControllerInfo: UIViewController {
    
    //lista dei nomi di tutti gli articoli
    let arrayArticoli = ["ll più grande alleato", "Qualcosa"]
    
    //nome identificativo dell'articolo
    var nomeArticolo: String?
    
    //titolo dell'articolo che sarà sulla label
    @IBOutlet weak var titoloArticolo: UILabel!
    
    //descrizione (contenuto) dell'articolo che sarà nel textView
    @IBOutlet weak var descrizioneArticolo: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nomeArticolo = selezionaArticolo()
        
        titoloArticolo.text = nomeArticolo
        
        switch(nomeArticolo) {
        case "Il più grande alleato":
            descrizioneArticolo.text = "Il più grande alleato contro la tua dipendenza sei tu!"
        case "Qualcosa":
            descrizioneArticolo.text = "Qualcosa..."
        default:
            descrizioneArticolo.text = "Niente..."
            
        }

        // Do any additional setup after loading the view.
    }
    
    
    //questa variabile serve solo per selezionare random l'articolo che verrà visualizzato
    var random: Int = 0
    
    func selezionaArticolo() -> String {
        random = Int(arc4random()) % arrayArticoli.count
        nomeArticolo = arrayArticoli[random]
        
        return nomeArticolo!
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
