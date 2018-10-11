//
//  ViewControllerMe.swift
//  outOfMatrix
//
//  Created by orangeDugongo on 05/10/2018.
//  Copyright © 2018 TheJagers. All rights reserved.
//

import UIKit
import CoreData

class ViewControllerMe: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var pointD: UILabel!
    @IBOutlet weak var pointW: UILabel!
    @IBOutlet weak var pointM: UILabel!
    @IBOutlet weak var changeIcon: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let points = loadPoints()
        pointD.text = String(dailyPoint(points: points))
        pointW.text = String(weeklyPoint(points: points))
        pointM.text = String(monthlyPoint(points: points))
    }
    
    func dailyPoint(points: [Point]) -> Int {
        var tot = 0
        points
            .filter { filterDate(pointDate: $0.date, dayBack: 1)}
            .map { Int($0.point) }
            .forEach { tot += $0 }
        return tot
    }
    
    func weeklyPoint(points: [Point]) -> Int {
        var tot = 0
        points
            .filter { filterDate(pointDate: $0.date, dayBack: 7)}
            .map { Int($0.point) }
            .forEach { tot += $0 }
        return tot
    }
    
    func monthlyPoint(points: [Point]) -> Int {
        var tot = 0
        points
            .filter { filterDate(pointDate: $0.date, dayBack: 30)}
            .map { Int($0.point) }
            .forEach { tot += $0 }
        return tot
    }
    
    func filterDate(pointDate: Date?, dayBack: Int) -> Bool {
        let currentDate = Date()
        var dateComponent = DateComponents()
        dateComponent.day = -dayBack
        let pastDate = Calendar.current.date(byAdding: dateComponent, to: currentDate)
        /*
        let dateformatter = DateFormatter()
        dateformatter.dateStyle = DateFormatter.Style.short
        dateformatter.timeStyle = DateFormatter.Style.short
        print("data 1 \(dateformatter.string(from: pointDate!))")
        print("date 2 \(dateformatter.string(from: pastDate!))")*/
        if let pd = pointDate {
            return pd < currentDate && pd > pastDate!
        } else {
            return false
        }
    }
    
    func loadPoints() -> [Point] {
        var points: [Point] = []
        if let appDelegate = (UIApplication.shared.delegate as? AppDelegate) {
            let fetchRequest: NSFetchRequest<Point> = Point.fetchRequest()
            
            let sortDescriptor = NSSortDescriptor(key: "point", ascending: false)
            fetchRequest.sortDescriptors = [sortDescriptor]
            
            let context = appDelegate.persistentContainer.viewContext
            let fetchController = NSFetchedResultsController(
                fetchRequest: fetchRequest,
                managedObjectContext: context,
                sectionNameKeyPath: nil,
                cacheName: nil
            )
            
            do {
                try fetchController.performFetch()
                if let fetchedObjects = fetchController.fetchedObjects {
                    points = fetchedObjects
                }
            } catch {
                print(error)
            }
        }
        
        return points
    }
}
