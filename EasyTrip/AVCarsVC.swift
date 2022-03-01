//
//  AVCarsVC.swift
//  EasyTrip
//
//  Created by Shahad on 27/07/1443 AH.
//

import UIKit

class AVCarsVC: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate , UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!

    
    var taxiapps =
    [taxiapp(taxiname: "Uber", taxiprice: "SAR 26.92", taxiNearby: "Cars Nearby: 3", taxiImage:UIImage(named:"image1")!) ,
                   
     taxiapp(taxiname: "Jeeny", taxiprice: "SAR 27.43", taxiNearby: "Cars Nearby: 2", taxiImage:UIImage(named:"image2")!) ,
                   
     taxiapp(taxiname: "Careem", taxiprice: "SAR 30.76", taxiNearby: "Cars Nearby: 3", taxiImage:UIImage(named:"image3")!) ,
                    
     taxiapp(taxiname: "Bolt", taxiprice: "SAR 29.23", taxiNearby: "Cars Nearby: 1", taxiImage:UIImage(named:"image4")!)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return taxiapps.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "carCell", for: indexPath) as! AVCarsCollectionViewCell
        let taxi = taxiapps[indexPath.row]
    
        
        cell.layer.cornerRadius = 20
        
  cell.setupCell(TXimg:taxi.taxiImage, TXname: taxi.taxiname, TXprice: taxi.taxiprice, TXnearby: taxi.taxiNearby)
        return cell
    }
    

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 116)
   }
   

 

}

struct taxiapp {
    var taxiname: String
    var taxiprice: String
    var taxiNearby: String
    var taxiImage: UIImage
    
}
