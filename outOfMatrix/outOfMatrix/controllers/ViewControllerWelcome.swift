//
//  ViewControllerWelcome.swift
//  outOfMatrix
//
//  Created by peronecolombamiriana on 09/10/2018.
//  Copyright © 2018 TheJagers. All rights reserved.
//

import UIKit

class ViewControllerWelcome: UIViewController {

    
    @IBOutlet weak var labelSubTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelSubTitle.text = "This app helps you overcome your addiction,\n have a good time"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showPopUpInfoApp(_ sender: Any) {
        let popOverVCW = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "popUpInfoAppID") as! PopUpInfoAppViewControllerWelcome
        self.addChildViewController(popOverVCW)
        popOverVCW.view.frame = self.view.frame
        self.view.addSubview(popOverVCW.view)
        popOverVCW.didMove(toParentViewController: self)
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
