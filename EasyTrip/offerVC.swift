//
//  offerVC.swift
//  EasyTrip
//
//  Created by Shahad on 27/07/1443 AH.
//

import UIKit

class offerVC: UIViewController ,UICollectionViewDataSource, UICollectionViewDelegate , UICollectionViewDelegateFlowLayout{
    
    var arrOffer = [offer(photo:UIImage(named:"Uber")!, adv: "Invite a friend and get 14% offer", cobon: "#FRI14", kind: "Uber") , offer(photo:UIImage(named: "Careem")!, adv: "Invite a friend and get 17% offer", cobon: "#FRI17", kind: "Careem"),offer(photo:UIImage(named: "Careem")!, adv: "Invite a friend and get 17% offer", cobon: "#FRI17", kind: "Careem"),offer(photo:UIImage(named: "Careem")!, adv: "Invite a friend and get 17% offer", cobon: "#FRI17", kind: "Careem"),offer(photo:UIImage(named: "Jenny")!, adv: "Invite a friend and get 17% offer", cobon: "#FRI17", kind: "Jeeny")]

    
    @IBOutlet weak var collectionView: UICollectionView!
    
    //    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        // Do any additional setup after loading the view.
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrOffer.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "offerCell", for: indexPath) as! offerCollectionViewCell
        let offer = arrOffer[indexPath.row]
        
        cell.layer.cornerRadius = 20
        
        cell.setupCell(photo:offer.photo, ad: offer.adv, co: offer.cobon)
        return cell
      
    
}
    /////
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 78)
    }

    

}

struct offer {

var photo : UIImage
var adv: String
var cobon : String
var kind : String
  
}



