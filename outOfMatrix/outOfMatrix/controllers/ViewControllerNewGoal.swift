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
    var leggereD = ["Read a magazine with a friend", "Read the journal", "Read a chapter of a book", "Take a ride in a library or in a bookstore", "Ask a device from a friend about a book to read", "Ask a device from a friend about a comic strip to read", "recommended to someone a book or a comic strip to read"]
    var leggereDPt = [300, 100, 50, 50, 20, 10, 75]
    
    // Settimanale
    var leggereW = ["Read a magazine", "Read a magazine with a friend"]
    var leggereWPt = [800, 300]
    
    // Mensile
    var leggereM = ["Read a book", "Read two little book"]
    var leggereMPt = [4000, 2000]
    
    // Giornaliero
    var scrivereD = ["Write a page of your personal diray", "Write a summary of a story"]
    var scrivereDPt = [150, 300]
    
    // Settimanale
    var scrivereW = ["Write a letter for a friend", "Write a fantastic story"]
    var scrivereWPt = [200, 500]
    
    // Mensile
    var scrivereM = ["Write a poetry", "Write a lyrics of a song"]
    var scrivereMPt = [600, 550]
    
    // Giornaliero
    var cucinareD = ["Cook a savory pie", "Take part at one cooking class", "Cook a first course", "Cook a second course with a side dish", "Call someone for a device about a course"]
    var cucinareDPt = [120, 50, 100, 200, 250]
    
    // Settimanale
    var cucinareW = ["Cook a new thing", "Cook a dessert"]
    var cucinareWPt = [500, 300]
    
    // Mensile
    var cucinareM = ["Learn the recipe of three savory pies", "Take the HCCP's certificate", "Invent a new course"]
    var cucinareMPt = [500, 1000, 2000]
    
    // Giornaliero
    var suonareD = ["Sing/play with a company", "Learn to play your favourite music instrument"]
    var suonareDPt = [200, 200]
    
    // Settimanale
    var suonareW = ["Learn a new song", "Take a part on a music class"]
    var suonareWPt = [600, 100]
    
    // Mensile
    var suonareM = ["Learn a new song", "Mostra i tuoi progressi nel suonare il tuo strumento musicale ai tuoi amici/parenti", "Forma una band", "Scrivi un testo", "Scrivi uno spartito"]
    var suonareMPt = [500, 200, 400, 550, 550]
    
    // Giornaliero
    var acoltareD = ["Compra un CD", "Chiedi consiglio su una canzi"]
    var ascoltareDPt = [30, 40]
    
    // Settimanale
    var ascoltareW = ["Ascolta un CD che non ascoltavi da tempo"]
    var ascoltareWPt = [100]
    
    // Mensile
    var ascoltareM = ["Vai ad un concerto", "segui un tour"]
    var ascoltareMPt = [300, 2000]
    
    // Giornaliero
    var fare_sportD = ["Iscriviti ad un'attività sportiva", "Fai mezz'ora di sport", "Prova una disciplina marziale"]
    var fare_sportDPt = [120, 50, 100]
    
    // Settimanale
    var fare_sportW = ["Fai sport per un'intera settimana", "Partecipa ad una gara", "Corri per 1 km"]
    var fare_sportWPt = [400, 500, 600]
    
    // Mensile
    var fare_sportM = ["Partecipa ad una maratona", "Vai in un parkour-park"]
    var fare_sportMPt = [750, 500]
    
    // Giornaliero
    var guardare_sportD = ["Vai ad una partita di calcetto", "Guarda una lezione di qualsiasi sport"]
    var guardare_sportDPt = [200, 100]
    
    // Settimanale
    var guardare_sportW = ["Vai allo stadio", "Vai ad un incontro"]
    var guardare_sportWPt = [50, 100]
    
    // Mensile
    var guardare_sportM = ["Vai ad un circuito per vedere una gara di moto gp", "Vai ad un circuito per vedere una gara di formula uno", "Vai ad un circuito per vedere una gara di rally"]
    var guardare_sportMPt = [600, 600, 1000]
    
    // Giornaliero
    var animaliD = ["Dai da mangiare ad un animale abbandonato", "Fai un giro con il tuo animale", "Gioca con il tuo animale", "Coccola il tuo animale"]
    var animaliDPt = [40, 30, 75, 80]
    
    // Settimanale
    var animaliW = ["Vai in una associazione per gli animali", "Prenditi cuna di un animale abbandonato", "Cerca una casa ad un animale abbandonato"]
    var animaliWPt = [400, 500, 1000]
    
    // Mensile
    var animaliM = ["Iscriviti ad una associazione", "Aiuta le associazioni a togliere animali dalla strada"]
    var animaliMPt = [2000, 2500]
    
    // Giornaliero
    var teatroD = ["Vai ad una lezione teatrale", "Visita una scuola di teatro", "Fai una prova in una scuola di teatro"]
    var teatroDPt = [50, 75, 100]
    
    // Settimanale
    var teatroW = ["Iscriviti in una scuola teatrale", "Leggi il copione di un'opera"]
    var teatroWPt = [250, 100]
    
    // Mensile
    var teatroM = ["Vai ad una rappresentazione teatrale", "Guarda un'opera teatrale"]
    var teatroMPt = [100, 500]
    
    // Giornaliero
    var naturaD = ["Passa un giorno all'aria aperta", "Vai in montagna/ al mare"]
    var naturaDPt = [100, 200]
    
    // Settimanale
    var naturaW = ["Vai una settimana al mare", "Vai una settimana in montagna"]
    var naturaWPt = [100, 100]
    
    // Mensile
    var naturaM = ["Vai un mese al mare", "Vai un mese in montagna"]
    var naturaMPt = [1]
    
/*    // Giornaliero
    var benessereD = [""]
    var benessereDPt = [1]
    
    // Settimanale
    var benessereW = [""]
    var benessereWPt = [1]
    
    // Mensile
    var benessereM = [""]
    var benessereMPt = [1] */
    
    // Giornaliero
    var socializzareD = ["Fai una giornata di relax", "Vai in giro con un amico"]
    var socializzareDPt = [50, 50]
    
    // Settimanale
    var socializzareW = ["Fai un viaggio con un amico", "Vai in vacanza con la famiglia", "Prenditi una settimana per te"]
    var socializzareWPt = [100, 100, 100]
    
    // Mensile
    var socializzareM = ["Porta un amico/a in un centro benessere", "Fai una sauna", "Prenditi un caffè con un amico che non vedevi da tempo"]
    var socializzareMPt = [300, 300, 200]
    
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
    
/*    // Giornaliero
    var spiritualitàD = [""]
    var spiritualitàDPt = [1]
    
    // Settimanale
    var spiritualitàW = [""]
    var spiritualitàWPt = [1]
    
    // Mensile
    var spiritualitàM = [""]
    var spiritualitàMPt = [1] */
    
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

            rerollLabel.text = "You can generate another goal. Just once"
        }
        if cambia.selectedSegmentIndex == 1 {
            numero = 1
//
            rerollLabel.text = "You can generate another goal. Just three times"
        }
        if cambia.selectedSegmentIndex == 2 {
            numero = 2
//
            rerollLabel.text = "You can generate another goal. Just five times"
        }
    }
    
/*    @IBAction func onSaveClick(_ sender: UIBarButtonItem) {
        if let appDelegate = (UIApplication.shared.delegate as? AppDelegate) {
            let context = appDelegate.persistentContainer.viewContext
            
            let goal = Goal(context: context)
            goal.isSet = true
            goal.desc = "Prova"
            goal.name =
            goal.point = 200
            appDelegate.saveContext()
            
        }
        navigationController?.popViewController(animated: true)
    }*/
    
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
