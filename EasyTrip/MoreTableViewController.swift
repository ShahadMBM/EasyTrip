//
//  MoreTableViewController.swift
//  EasyTrip
//
//  Created by Shaden Almuhaidib on 28/02/2022.
//

import UIKit

class MoreTableViewController: UITableViewController {
    
 
    @IBOutlet weak var name: UILabel!
    
 
    @IBOutlet weak var settingLable: UILabel!
    @IBOutlet weak var languageLable: UILabel!
    @IBOutlet weak var modeLable: UILabel!
    @IBOutlet weak var generalLable: UILabel!
    @IBOutlet weak var aboutUS: UILabel!
    
    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var languageSegmented: UISegmentedControl!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

// btn.setImage(NSLocalizedString("chevron.right", comment: ""), for: .normal)
        
        self.title = NSLocalizedString("more", comment: "")
        generalLable.text = NSLocalizedString("general", comment: "")
        
//        languageButton.setTitle(NSLocalizedString("EN|AR", comment: ""), for: .normal)
        
        languageLable.text = NSLocalizedString("language", comment: "")
        modeLable.text = NSLocalizedString("mode", comment: "")
        settingLable.text = NSLocalizedString("settings", comment: "")
        aboutUS.text = NSLocalizedString("aboutUS", comment: "")
    }
    
    @IBAction func languageSeg(_ sender: UISegmentedControl) {

        let alert = UIAlertController(title: "Change language", message: "Need to re-start app", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { UIAlertAction in
             exit(0)
           }))
           present(alert, animated: true)
           {
             let currentLang = Locale.current.languageCode
             let newLang = currentLang == "en" ? "ar" : "en"
             UserDefaults.standard.setValue([newLang], forKey: "AppleLanguages")
    }
        
        
    
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 6
    }


    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            if indexPath.row == 2 {
                
//                performSegue(withIdentifier: "goToDetals", sender: nil)
                
            }
        }
    }
  

    
    
    }
    
  
  
    
    
    



//    override func viewDidLoad() {
//
//        super.viewDidLoad()
//    }
//
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 1
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 6
//    }
//
//
//    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
//      //push to anoter screen
//    }
//
//}
