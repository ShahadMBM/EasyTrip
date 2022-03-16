//
//  ViewController.swift
//  EasyTrip
//
//  Created by Shahad on 20/07/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var des: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = NSLocalizedString("aboutUS", comment: "")
        des.text = NSLocalizedString("An application  that compares different transportation firms' services in order to get the best transportation experience", comment: "")
        // "An application  that compares different transportation firms' services in order to get the best transportation experience"
        
      
    }


}

