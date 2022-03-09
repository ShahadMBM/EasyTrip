//
//  selectDestVC.swift
//  EasyTrip
//
//  Created by Shahad on 03/08/1443 AH.
//

import UIKit

class selectDestVC: UIViewController,UITableViewDelegate, UITableViewDataSource , UISearchBarDelegate {
    
    @IBOutlet weak var currentSearch: UISearchBar!
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    let arrdata = ["A4 PNU", "Alnakheel Mall" , "Riyadh Front" , "Apple Developer Academy", "King Khalid International Airport"]
    
    var filtereData : [String]!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        searchBar.delegate = self
        currentSearch.delegate = self
        currentSearch.isUserInteractionEnabled = false
        filtereData = arrdata
        currentSearch.setImage(UIImage(), for: .search, state: .normal)
        searchBar.setImage(UIImage(), for: .search, state: .focused)
       // searchbar.
        self.title = NSLocalizedString("SL", comment: "")
        
        // Do any additional setup after loading the view.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filtereData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
let cell = tableView.dequeueReusableCell(withIdentifier: "sCell") as! searchCell
        cell.resultSearch .text = filtereData[indexPath.row]
        return cell
    }
    
    
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filtereData = []
        
        if searchText == "" {
            
            filtereData = arrdata
        }
        else{
        for places in arrdata  {
            
            if places.lowercased().contains(searchText.lowercased()){
                
                filtereData.append(places)
            }
            
        }
        }
        self.tableView.reloadData()
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedItem = filtereData[indexPath.row]
        searchBar.text = selectedItem
        
    }
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        let vc1 = storyboard?.instantiateViewController(withIdentifier: "search28") as! AVCarsVC
        navigationController?.pushViewController(vc1, animated: true)
    }
}


