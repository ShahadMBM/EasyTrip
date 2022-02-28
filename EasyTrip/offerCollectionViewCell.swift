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
    
    
    func setupCell (photo :UIImage, ad: String , co : String){
       
        img.image = photo
        advs.text = ad
        cobon.text = co

    }

}
