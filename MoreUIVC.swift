//
//  MoreUIVC.swift
//  EasyTrip
//
//  Created by Shaden Almuhaidib on 08/03/2022.
//


    import UIKit

    class HomeTableVC: UITableViewController {
        
        @IBOutlet weak var nameSymbol: UIImageView!
        
        @IBOutlet weak var emailSymbol: UIImageView!
        
        @IBOutlet weak var phoneSymbol: UIImageView!
        
        @IBOutlet weak var aboutusSymbol: UIImageView!
        
        @IBOutlet weak var languageSymbol: UIImageView!
        
        @IBOutlet weak var modeSymbol: UIImageView!
        
        
        @IBOutlet weak var personName: UITextField!
        @IBOutlet weak var settingLable: UILabel!
        @IBOutlet weak var languageLable: UILabel!
        @IBOutlet weak var modeLable: UILabel!
        @IBOutlet weak var generalLable: UILabel!
        @IBOutlet weak var languageButton: UIButton!
        
        @IBOutlet weak var editButton: UIButton!
        
        
        override func viewDidLoad() {
            super.viewDidLoad()

          
            generalLable.text = NSLocalizedString("general", comment: "")
            languageButton.setTitle(NSLocalizedString("EN|AR", comment: ""), for: .normal)
            languageLable.text = NSLocalizedString("language", comment: "")
            modeLable.text = NSLocalizedString("mode", comment: "")
            settingLable.text = NSLocalizedString("settings", comment: "")
        }
        
        @IBAction func languageButton(_ sender: Any) {
            let currentLang = Locale.current.languageCode
            let newLanguage = currentLang == "en" ? " ar" : "en"
            UserDefaults.standard.setValue(newLanguage, forKey: "AppleLanguages")
            exit(0)
            
        }
            
    //        func NSLocalizedString(_ key: String, tableName: String? = default, bundel: Bundle = default, value: String = default, comment: String)-> String {
    //
    //        //let string = NSLocalizedString("general", comment: "")
    //
    //        }
            
            //     let currentLang = Locale.current.languageCode
       //     let newLanguage = currentLang == "en" ? "ar" : "en"
            
        //    UserDefaults.standard.setValue([newLanguage], forKey: "AppleLanguages")
            
            
        //   UserDefaults.standard.setValue([newLanguage], forkey: "AppleLanguages")
          //  exit(0)
        
        
        @IBAction func userName(_ sender: UITextField) {
        }
        @IBAction func userEmail(_ sender: UITextField) {
        }
        @IBAction func userPhone(_ sender: UITextField) {
        }
      
        @IBAction func editButton(_ sender: Any) {
            
        }
        

        // MARK: - Table view data source

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
                    
                    performSegue(withIdentifier: "goToDetals", sender: nil)
                    
                }
            }
        }
      

        
        
        }
        
      
      
        
        
        



