//
//  categoryMapCell.swift
//  EasyTrip
//
//  Created by Shahad on 03/08/1443 AH.
//

import UIKit

class categoryMapCell: UICollectionViewCell {
    
    @IBOutlet weak var catImg: UIImageView!
    @IBOutlet weak var title: UILabel!
    
    func setCell (photo :UIImage, title1: String ){
       
        catImg.image = photo
        title.text = title1
    

    }
}


