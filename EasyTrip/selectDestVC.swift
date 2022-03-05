//
//  selectDestVC.swift
//  EasyTrip
//
//  Created by Shahad on 03/08/1443 AH.
//

import UIKit

class selectDestVC: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var searchbar: UISearchBar!
    let arrdata = ["A4 PNU", "Alnakheel Mall" , "Riyadh Front" , "Apple Developer Academy", "King Khalid International Airport"]
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
       // searchbar.

        
        // Do any additional setup after loading the view.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrdata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
let cell = tableView.dequeueReusableCell(withIdentifier: "sCell") as! searchCell
        cell.resultSearch .text = arrdata[indexPath.row]
        return cell
    }
}
