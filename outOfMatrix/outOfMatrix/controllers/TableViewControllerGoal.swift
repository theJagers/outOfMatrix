//
//  TableViewControllerGoal.swift
//  outOfMatrix
//
//  Created by orangeDugongo on 05/10/2018.
//  Copyright © 2018 TheJagers. All rights reserved.
//

import UIKit
import CoreData

class TableViewControllerGoal: UITableViewController,  NSFetchedResultsControllerDelegate {

    var goals: [Goal] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let goal1 = Goal(context: context)
        goal1.name = "Corri nel parco per 25 minuti"
        goal1.point = 250
        goal1.desc = "Devi correre per 25 minuti, mi raccomando non usare lo smartphone"
        goal1.isSet = true
        
        let goal2 = Goal(context: context)
        goal2.name = "Caffè con un amico"
        goal2.point = 150
        goal2.desc = "Prendi un caffè con un amico che non vedi da tempo. Lo smartphone è ammesso solo per dargli appuntamento"
        goal2.isSet = true
        
        let goal3 = Goal(context: context)
        goal3.name = "Cucina una torta"
        goal3.point = 350
        goal3.desc = "Cucina una torta, non cercare la ricetta su internet"
        goal3.isSet = true
        
        let goal4 = Goal(context: context)
        goal4.name = "Non so"
        goal4.point = 2500
        goal4.desc = "Non so, fai tu"
        goal4.isSet = true
        
        appDelegate.saveContext()
 */
        
        goals = loadGoal()
    }
    
    func loadGoal() -> [Goal] {
        var goals: [Goal] = []
            if let appDelegate = (UIApplication.shared.delegate as? AppDelegate) {
                var fetchController: NSFetchedResultsController<Goal>!
                let fetchRequest: NSFetchRequest<Goal> = Goal.fetchRequest()
                let sortDescriptor = NSSortDescriptor(key: "name", ascending: true)
                fetchRequest.sortDescriptors = [sortDescriptor]
                let context = appDelegate.persistentContainer.viewContext
                fetchController = NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: context, sectionNameKeyPath: nil, cacheName: nil)
                fetchController.delegate = self
            
                do {
                    try fetchController.performFetch()
                    if let fetchedObjects = fetchController.fetchedObjects {
                        goals = fetchedObjects.filter({ it -> Bool in
                            it.isSet
                        })
                    }
                } catch {
                    print(error)
                }
            }
        return goals
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return goals.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! GoalCell
        
        let description = goals[indexPath.row].desc
        cell.name.text = goals[indexPath.row].name
        cell.point.text = "\(goals[indexPath.row].point) pt."
        if let strlen = description?.count {
            cell.desc.text = strlen > 45 ? "\(description![..<description!.index(description!.startIndex, offsetBy: 45)])..." : description
        }

        return cell
    }
    
    
   /*
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
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
