//
//  PopUpInfoAppViewControllerWelcome.swift
//  outOfMatrix
//
//  Created by maiomattia on 10/10/18.
//  Copyright © 2018 TheJagers. All rights reserved.
//

import UIKit

class PopUpInfoAppViewControllerWelcome: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.8)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var descrizioneApp: UILabel!

    //cosa sta scritto nella app
   // descrizioneApp.text = "bla bla"
    
    @IBAction func closePopUpInfoApp(_ sender: Any) {
        self.view.removeFromSuperview()
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
