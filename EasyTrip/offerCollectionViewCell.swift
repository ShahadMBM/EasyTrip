//
//  offerCollectionViewCell.swift
//  EasyTrip
//
//  Created by Shahad on 27/07/1443 AH.
//

import UIKit

class offerCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var advs: UILabel!
    @IBOutlet weak var cobon: UILabel!
    
    @IBOutlet weak var copyBtn: UIButton!
    
    @IBAction func pressedCopy(_ sender: UIButton) {
        //
        sender.setImage(UIImage(systemName: "doc.on.clipboard.fill"), for: .normal)
      ///
        ///
        ///
    }
    
    func setupCell (photo :UIImage, ad: String , co : String){
       
        img.image = photo
        advs.text = ad
        cobon.text = co
        
        self.advs.isAccessibilityElement = false
        self.cobon.isAccessibilityElement = false
        isAccessibilityElement = true
        accessibilityLabel = "Offer is \(ad) cobon code \(co) tap here for reedeme"
        
        
        

    }

}
