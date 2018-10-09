//
//  Interests.swift
//  outOfMatrix
//
//  Created by cefarellimariaserafina on 09/10/18.
//  Copyright © 2018 TheJagers. All rights reserved.
//

import UIKit

class Interests: UITableViewController {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    var interestName = ["READING","WRITING","COOKING", "PLAYING MUSIC","LISTEN TO MUSIC","PLAYING SPORT","FOLLOW A SPORT","PETS","THEATRE","ACTING","CINEMA","NATURE","WELFARE","SOCIALITY","VOLUNTERING","TECHNOLOGY","SPIRITUALITY","JOURNEY"]
    
    var interestImage = ["leggere.jpeg","scirvere.jpeg","cucinare.jpeg","praticareMusica.jpeg","ascoltareMusica.jpeg","praticareSport.jpeg","seguireSport.jpeg","animali.jpeg","teatro.jpeg","recitazione.jpeg","cinema.jpeg","natura.jpeg","benessere.jpeg","socialita.jpeg","volontariato.jpeg","tecnologia.jpeg","spiritualita.jpeg","viaggiare.jpeg"]
    
    var userInterests: [String] = [String]()
    var idInterest: Int = -1
    
    @IBOutlet weak var addInterestButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return interestName.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = interestName[indexPath.row]
        cell.imageView?.image = UIImage(named: interestImage[indexPath.row])
        
        // Configure the cell...
        
        return cell
    }
    
    
    @IBAction func addInterest(_ sender: UIBarButtonItem){
         userInterests.append(interestName[idInterest])
    }
    
    func getInterest(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) -> Int {
        switch (indexPath.row){
            case 0: idInterest = 0
            case 1: idInterest = 1
            case 2: idInterest = 2
            case 3: idInterest = 3
            case 4:  idInterest = 4
            case 5:  idInterest = 5
            case 6: idInterest = 6
            case 7: idInterest = 7
            case 8: idInterest = 8
            case 9: idInterest = 9
            case 10: idInterest = 10
            case 11: idInterest = 11
            case 12: idInterest = 12
            case 13: idInterest = 13
            case 14: idInterest = 14
            case 15: idInterest = 15
            case 16: idInterest = 16
            case 17: idInterest = 17
            case 18: idInterest = 18
        default: return -1
        }
        return idInterest
    }
        //seleziono una riga della table
        //premo il tasto add
        //aggiungo l'interest name all'array userInterests
        
        
    }
    
    //da verificare
    /*
     override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
     if indexPath.row == 0 {
     performSegue(withIdentifier: "dettagli", sender: self)
     }
     }
     */

