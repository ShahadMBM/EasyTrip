//
//  AVCarsCollectionViewCell.swift
//  EasyTrip
//
//  Created by Shahad on 27/07/1443 AH.
//

import UIKit

class AVCarsCollectionViewCell: UICollectionViewCell {
   
    @IBOutlet weak var TaxiImg: UIImageView!
    
    @IBOutlet weak var TaxiName: UILabel!
    @IBOutlet weak var TaxiPrice: UILabel!
    @IBOutlet weak var TaxiNearby: UILabel!
    var selectedApp: String?
    
    @IBOutlet weak var taxiApp: UIButton!
    //@IBOutlet weak var DIV: UIView!
    
    func setupCell (TXimg :UIImage, TXname: String , TXprice: String, TXnearby : String){
       
        TaxiImg.image = TXimg
        TaxiName.text = TXname
        TaxiPrice.text = TXprice
         selectedApp = TXname
        TaxiNearby.text = TXnearby

            self.TaxiName.isAccessibilityElement = false
            self.TaxiNearby.isAccessibilityElement = false
            self.TaxiPrice.isAccessibilityElement = false
            self.TaxiImg.isAccessibilityElement = false
            isAccessibilityElement = true
            accessibilityLabel = "taxi app name \(TXname) the \(TXnearby) the price of the trip \(TXprice) tap here to go to \(TXname) app"
    }
    
    @IBAction func gotoApp(_ sender: UIButton) {

        switch selectedApp {
          case "Uber":
            return UIApplication.shared.open(URL(string: "https://m.uber.com/ul/")!)
          case "Jeeny":
            return UIApplication.shared.open(URL(string: "https://jeeny.me/ar")!)
          case "Careem":
            return UIApplication.shared.open(URL(string: "https://www.careem.com")!)
          case "Bolt":
            return UIApplication.shared.open(URL(string: "https://bolt.eu/ar-sa/")!)
          default:
            return UIApplication.shared.open(URL(string: "https://m.uber.com/ul/")!)
          }
          }
        }
