//
//  PopUpInfoAppViewControllerWelcome.swift
//  outOfMatrix
//
//  Created by maiomattia on 10/10/18.
//  Copyright © 2018 TheJagers. All rights reserved.
//

import UIKit

class PopUpInfoAppViewControllerWelcome: UIViewController {
    
    @IBOutlet weak var descrizioneApp: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        
        //cosa sta scritto nella app
       descrizioneApp.text = "Con questa app ti verranno proposte tante attività in linea con i tuoi interessi!\nAttività che ti faranno tener d'occhio quante cose belle puoi fare!\nCi sono obiettivi giornalieri, settimanali e mensili, in base al tempo che ti verrà concesso per raggiungere l'obiettivo proposto.\nNon credi di riuscire a portare a termine l'attività proposta? In base al tipo di obiettivo (giornaliero/settimanale/mensile) avrai a disposizione più o meno reroll che ti permetteranno di ottenere delle attività in alternativa a quella già proposta.\nOgni attività che porterai a termine ti farà guadagnare punti, quindi fai quante più attività puoi e migliora il tuo punteggio giorno per giorno!\nBuon divertimento!\n\n Lo staff di The Jagers :)"
    }

    @IBAction func closePopUpInfoApp(_ sender: Any) {
        self.view.removeFromSuperview()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
