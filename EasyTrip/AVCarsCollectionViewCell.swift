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
    
    @IBOutlet weak var taxiApp: UIButton!
    
    func setupCell (TXimg :UIImage, TXname: String , TXprice: String, TXnearby : String){
       
        TaxiImg.image = TXimg
        TaxiName.text = TXname
        TaxiPrice.text = TXprice
        TaxiNearby.text = TXnearby

    }
    
    @IBAction func gotoApp(_ sender: UIButton) {

            UIApplication.shared.open(URL(string: "https://m.uber.com/ul/")!)
        
    }
}
