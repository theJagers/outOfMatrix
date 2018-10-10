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

    var fetchController: NSFetchedResultsController<Goal>!
    var goals: [Goal] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        goals = loadGoal()
    }
    
    func loadGoal() -> [Goal] {
        var goals: [Goal] = []
            if let appDelegate = (UIApplication.shared.delegate as? AppDelegate) {
                let fetchRequest: NSFetchRequest<Goal> = Goal.fetchRequest()
                
                let sortDescriptor = NSSortDescriptor(key: "point", ascending: false)
                fetchRequest.sortDescriptors = [sortDescriptor]
                fetchRequest.predicate = NSPredicate(format: "isSet == %@", NSNumber(value: true))
                
                let context = appDelegate.persistentContainer.viewContext
                fetchController = NSFetchedResultsController(
                    fetchRequest: fetchRequest,
                    managedObjectContext: context,
                    sectionNameKeyPath: nil,
                    cacheName: nil
                )
                fetchController.delegate = self
            
                do {
                    try fetchController.performFetch()
                    if let fetchedObjects = fetchController.fetchedObjects {
                        goals = fetchedObjects
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
            let point = self.goals[indexPath.row].point
            
            self.onSwipe(point: point, index: indexPath.row, alert: {
                // Pop Up
                let alertController = UIAlertController(
                    title: "Done",
                    message: "congratulations, you earned \(point) points",
                    preferredStyle: UIAlertController.Style.alert
                )
                alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                self.present(alertController, animated: true, completion: nil)
            })
            
            // Call completion handler with true to indicate
            completionHandler(true)
        }
        
        // Set the icon and background color for the actions
        doneAction.backgroundColor = UIColor(red: 76.0/255.0, green: 200.0/255.0, blue: 60.0/255.0, alpha: 1.0)
    
        return UISwipeActionsConfiguration(actions: [doneAction])
    }
    
    // Give up
    override func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let giveUpAction = UIContextualAction(style: .normal, title: "Give Up") { (_, _, completionHandler) in
            let point = self.goals[indexPath.row].point
            
            self.onSwipe(point: -point, index: indexPath.row, alert: {
                // Pop Up
                let alertController = UIAlertController(
                    title: "Give Up",
                    message: "You gave up, you lost \(point) points",
                    preferredStyle: UIAlertController.Style.alert
                )
                alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                self.present(alertController, animated: true, completion: nil)
            })
            
            // Call completion handler with true to indicate
            completionHandler(true)
        }
        
        giveUpAction.backgroundColor = UIColor(red: 254.0/255.0, green: 149.0/255.0, blue: 38.0/255.0, alpha: 1.0)
        
        return UISwipeActionsConfiguration(actions: [giveUpAction])
    }
    
    
    func onSwipe(point: Int16, index: Int, alert: () -> Void) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        // Update goal
        self.goals[index].isSet = false
        // Stoare scoar
        let dbPoint = Point(context: context)
        dbPoint.point = point
        dbPoint.date = Date()
        
        // save
        do {
            try context.save()
        } catch { print(error) }
        
        // show alert
        alert()
    }

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
    }
}
