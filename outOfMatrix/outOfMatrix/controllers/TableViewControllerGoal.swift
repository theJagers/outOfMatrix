//
//  TableViewControllerGoal.swift
//  outOfMatrix
//
//  Created by orangeDugongo on 05/10/2018.
//  Copyright © 2018 TheJagers. All rights reserved.
//

import UIKit

class TableViewControllerGoal: UITableViewController {
    
    var interestName = ["READING","WRITING","COOKING", "PLAYING MUSIC","LISTEN TO MUSIC","PLAYING SPORT","FOLLOW A SPORT","PETS","THEATRE","ACTING","CINEMA","NATURE","WELFARE","SOCIALITY","VOLUNTERING","TECHNOLOGY","SPIRITUALITY","JOURNEY"]
    
    var interestImage = ["leggere.jpeg","scirvere.jpeg","cucinare.jpeg","praticareMusica.jpeg","ascoltareMusica.jpeg","praticareSport.jpeg","seguireSport.jpeg","animali.jpeg","teatro.jpeg","recitazione.jpeg","cinema.jpeg","natura.jpeg","benessere.jpeg","socialita.jpeg","volontariato.jpeg","tecnologia.jpeg","spiritualita.jpeg","viaggiare.jpeg"]
    
    var userInterests: [String] = [String]()
    
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
    
    func getInterest(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            userInterests.append(interestName[0])
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

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
