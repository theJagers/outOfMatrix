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

    // Giornaliero
    var leggereD = ["Leggi una rivista in compagnia", "Leggi un giornale", "Leggi un capitolo di un libro", "Fai un giro in libreria o in biblioteca", "Chiedi ad un amico un consiglio su un libro da leggere", "Chiedi ad un amico un consiglio su un fumetto da leggere", "Consiglia a qualcuno un libro o un fumetto da leggere"]
    var leggereDPt = [300, 100, 50, 50, 20, 10, 75]
    
    // Settimanale
    var leggereW = ["Leggi una rivista", "Leggi una rivista in compagnia"]
    var leggereWPt = [800, 300]
    
    // Mensile
    var leggereM = ["Leggi un libro"]
    var leggereMPt = [4000]
    
    // Giornaliero
    var scrivereD = ["Scrivi una pagina del tuo diario"]
    var scrivereDPt = [150]
    
    // Settimanale
    var scrivereW = ["Scrivi una lettera ad un tuo amico"]
    var scrivereWPt = [200]
    
    // Mensile
    var scrivereM = ["Scrivi un libro"]
    var scrivereMPt = [300]
    
    // Giornaliero
    var cucinareD = ["Cucina un dolce", "Prepara un rustico", "Segui una lezione di cucina", "Prepara un primo piatto", "Prepara un secondo piatto con contorno", "Chiama qualcuno per farti consigliare una ricetta"]
    var cucinareDPt = [300, 120, 50, 100, 200, 250]
    
    // Settimanale
    var cucinareW = ["Cucina qualcosa che non hai mai cucinato prima d'ora"]
    var cucinareWPt = [500]
    
    // Mensile
    var cucinareM = ["Impara a memoria la ricetta di tre rustici", "Ottieni l'attestato HCCP", "Inventa un nuovo piatto"]
    var cucinareMPt = [500, 1000, 2000]
    
    // Giornaliero
    var suonareD = ["Suona/canta in compagnia", "Esercitati a suonare il tuo strumento musicale preferito"]
    var suonareDPt = [200, 200]
    
    // Settimanale
    var suonareW = ["Impara una nuova canzone", "Segui una lezione di musica", ]
    var suonareWPt = [600, 100]
    
    // Mensile
    var suonareM = ["Impara una nuova canzone", "Mostra i tuoi progressi nel suonare il tuo strumento musicale ai tuoi amici/parenti", "Forma una band", "Scrivi un testo", "Scrivi uno spartito"]
    var suonareMPt = [500, 200, 400, 550, 550]
    
    // Giornaliero
    var acoltareD = ["Compra un CD", "Chiedi consiglio su una canzi"]
    var ascoltareDPt = [30]
    
    // Settimanale
    var ascoltareW = [""]
    var ascoltareWPt = [1]
    
    // Mensile
    var ascoltareM = [""]
    var ascoltareMPt = [1]
    
    // Giornaliero
    var fare_sportD = [""]
    var fare_sportDPt = [1]
    
    // Settimanale
    var fare_sportW = [""]
    var fare_sportWPt = [1]
    
    // Mensile
    var fare_sportM = [""]
    var fare_sportMPt = [1]
    
    // Giornaliero
    var guardare_sportD = [""]
    var guardare_sportDPt = [1]
    
    // Settimanale
    var guardare_sportW = [""]
    var guardare_sportWPt = [1]
    
    // Mensile
    var guardare_sportM = [""]
    var guardare_sportMPt = [1]
    
    // Giornaliero
    var animaliD = [""]
    var animaliDPt = [1]
    
    // Settimanale
    var animaliW = [""]
    var animaliWPt = [1]
    
    // Mensile
    var animaliM = [""]
    var animaliMPt = [1]
    
    // Giornaliero
    var teatroD = [""]
    var teatroDPt = [1]
    
    // Settimanale
    var teatroW = [""]
    var teatroWPt = [1]
    
    // Mensile
    var teatroM = [""]
    var teatroMPt = [1]
    
    // Giornaliero
    var recitareD = [""]
    var recitareDPt = [1]
    
    // Settimanale
    var recitareW = [""]
    var recitareWPt = [1]
    
    // Mensile
    var recitareM = [""]
    var recitareMPt = [1]
    
    // Giornaliero
    var cinemaD = [""]
    var cinemaDPt = [1]
    
    // Settimanale
    var cinemaW = [""]
    var cinemaWPt = [1]
    
    // Mensile
    var cinemaM = [""]
    var cinemaMPt = [1]
    
    // Giornaliero
    var naturaD = [""]
    var naturaDPt = [1]
    
    // Settimanale
    var naturaW = [""]
    var naturaWPt = [1]
    
    // Mensile
    var naturaM = [""]
    var naturaMPt = [1]
    
    // Giornaliero
    var benessereD = [""]
    var benessereDPt = [1]
    
    // Settimanale
    var benessereW = [""]
    var benessereWPt = [1]
    
    // Mensile
    var benessereM = [""]
    var benessereMPt = [1]
    
    // Giornaliero
    var socializzareD = [""]
    var socializzareDPt = [1]
    
    // Settimanale
    var socializzareW = [""]
    var socializzareWPt = [1]
    
    // Mensile
    var socializzareM = [""]
    var socializzareMPt = [1]
    
    // Giornaliero
    var volontariatoD = [""]
    var volontariatoDPt = [1]
    
    // Settimanale
    var volontariatoW = [""]
    var volontariatoWPt = [1]
    
    // Mensile
    var volontariatoM = [""]
    var volontariatoMPt = [1]
    
    // Giornaliero
    var tecnologiaD = [""]
    var tecnologiaDPt = [1]
    
    // Settimanale
    var tecnologiaW = [""]
    var tecnologiaWPt = [1]
    
    // Mensile
    var tecnologiaM = [""]
    var tecnologiaMPt = [1]
    
    // Giornaliero
    var spiritualitàD = [""]
    var spiritualitàDPt = [1]
    
    // Settimanale
    var spiritualitàW = [""]
    var spiritualitàWPt = [1]
    
    // Mensile
    var spiritualitàM = [""]
    var spiritualitàMPt = [1]
    
    // Giornaliero
    var viaggiareD = [""]
    var viaggiareDPt = [1]
    
    // Settimanale
    var viaggiareW = [""]
    var viaggiareWPt = [1]
    
    // Mensile
    var viaggiareM = [""]
    var viaggiareMPt = [1]
    
    
    var random: Int = 0
    var numero: Int = 0
    
    @IBAction func cambiaValore(_ sender: UISegmentedControl) {
        if cambia.selectedSegmentIndex == 0 {
            numero = 0
//            random = Int(arc4random()) % goalsd.count
//            newgoal.text = goalsd[random]
            rerollLabel.text = "You can generate another goal. Just once"
        }
        if cambia.selectedSegmentIndex == 1 {
            numero = 1
//            random = Int(arc4random()) % goalsw.count
//            newgoal.text = goalsw[random]
            rerollLabel.text = "You can generate another goal. Just three times"
        }
        if cambia.selectedSegmentIndex == 2 {
            numero = 2
//            random = Int(arc4random()) % goalsm.count
//            newgoal.text = goalsm[random]
            rerollLabel.text = "You can generate another goal. Just five times"
        }
    }
    
    
    @IBAction func reroll(_ sender: Any) {
        if numero == 0 {
//            random = Int(arc4random()) % goalsd.count
//            newgoal.text = goalsd[random]
        }
        if numero == 1 {
//            random = Int(arc4random()) % goalsw.count
//            newgoal.text = goalsw[random]
        }
        if numero == 2 {
//            random = Int(arc4random()) % goalsm.count
//            newgoal.text = goalsm[random]
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        reroll.setBackgroundImage(roll1, for: .normal)
//        random = Int(arc4random()) % goalsd.count
//        newgoal.text = goalsd[random]
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
