//
//  MoreTableViewController.swift
//  EasyTrip
//
//  Created by Shaden Almuhaidib on 28/02/2022.
//

import UIKit

class MoreTableViewController: UITableViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
 
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 7
    }

    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
      //push to anoter screen
    }
    
}
