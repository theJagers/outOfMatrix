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

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
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
    
    // Done
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let doneAction = UIContextualAction(style: .destructive, title: "Done") { (action, sourceView, completionHandler) in
            self.onSwipe(indexPath: indexPath, completionHandler: completionHandler, pointOp: {
                let point = self.goals[indexPath.row].point
            
                // Pop Up
                let alertController = UIAlertController(
                    title: "Done",
                    message: "congratulations, you earned \(point) points",
                    preferredStyle: UIAlertController.Style.alert
                )
                alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                self.present(alertController, animated: true, completion: nil)
                
                // Save point
                self.savePoint(point: point)
            })
        }
        
        // Set the icon and background color for the actions
        doneAction.backgroundColor = UIColor(red: 76.0/255.0, green: 200.0/255.0, blue: 60.0/255.0, alpha: 1.0)
    
        return UISwipeActionsConfiguration(actions: [doneAction])
    }
    
    // Give up
    override func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let giveUpAction = UIContextualAction(style: .normal, title: "Give Up") { (_, _, completionHandler) in
            self.onSwipe(indexPath: indexPath, completionHandler: completionHandler, pointOp: {
                let point = self.goals[indexPath.row].point
                let alertController = UIAlertController(
                    title: "Give Up",
                    message: "You gave up, you lost \(point) points",
                    preferredStyle: UIAlertController.Style.alert
                )
                alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                self.present(alertController, animated: true, completion: nil)
                
                // Save point
                self.savePoint(point: -point)
            })
        }
        
        giveUpAction.backgroundColor = UIColor(red: 254.0/255.0, green: 149.0/255.0, blue: 38.0/255.0, alpha: 1.0)
        
        return UISwipeActionsConfiguration(actions: [giveUpAction])
    }
    
    
    func onSwipe(indexPath: IndexPath, completionHandler: (Bool) -> Void, pointOp: () -> Void) {
        // Edit coreData
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        self.goals[indexPath.row].isSet = false
        appDelegate.saveContext()
        
        // pointOp
        pointOp()
        
        // Remove row
        self.goals.remove(at: indexPath.row)
        self.tableView.deleteRows(at: [indexPath], with: .fade)
        
        // Call completion handler with true to indicate
        completionHandler(true)
    }
    
    func savePoint(point: Int16) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let dbPoint = Point(context: context)
        dbPoint.point = point
        dbPoint.date = Date()
        
        appDelegate.saveContext()
    }
    
    
    /* Update with add
    func controllerWillChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
        tableView.beginUpdates()
    }
    
    func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>, didChange anObject: Any, at indexPath: IndexPath?, for type: NSFetchedResultsChangeType, newIndexPath: IndexPath?) {
        
        switch type {
        case .insert:
            if let newIndexPath = newIndexPath {
                tableView.insertRows(at: [newIndexPath], with: .fade)
            }
        case .delete:
            if let indexPath = indexPath {
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
        case .update:
            if let indexPath = indexPath {
                tableView.reloadRows(at: [indexPath], with: .fade)
            }
        default:
            tableView.reloadData()
        }
        
        if let fetchedObjects = controller.fetchedObjects {
            goals = fetchedObjects as! [Goal]
        }
    }
    
    func controllerDidChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
        tableView.endUpdates()
    }*/
}
