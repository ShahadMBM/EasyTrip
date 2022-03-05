//
//  AVCarsVC.swift
//  EasyTrip
//
//  Created by Shahad on 27/07/1443 AH.
//

import UIKit


enum TYPES {
    case Economy
    case XL
    case VIP
   
}

class AVCarsVC: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate , UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    
    var taxiapps =
    [taxiapp(taxiname: "Uber", taxiprice: "SAR 26.92", taxiNearby: "Cars Nearby: 3", taxiImage:UIImage(named:"image1")!, type: .Economy) ,
                   
     taxiapp(taxiname: "Jeeny", taxiprice: "SAR 27.43", taxiNearby: "Cars Nearby: 2", taxiImage:UIImage(named:"image2")!, type: .Economy) ,
                   
     taxiapp(taxiname: "Careem", taxiprice: "SAR 30.76", taxiNearby: "Cars Nearby: 3", taxiImage:UIImage(named:"image3")!, type: .Economy) ,
                    
     taxiapp(taxiname: "Bolt", taxiprice: "SAR 29.23", taxiNearby: "Cars Nearby: 1", taxiImage:UIImage(named:"image4")!, type: .Economy)]
    
    var taxiappsXL =
    [taxiapp(taxiname: "Uber", taxiprice: "SAR 26.92", taxiNearby: "Cars Nearby: 3", taxiImage:UIImage(named:"image1")!, type: .XL) ,
                   
     taxiapp(taxiname: "Jeeny", taxiprice: "SAR 27.43", taxiNearby: "Cars Nearby: 2", taxiImage:UIImage(named:"image2")!, type: .XL) ,
                   
     taxiapp(taxiname: "Careem", taxiprice: "SAR 30.76", taxiNearby: "Cars Nearby: 3", taxiImage:UIImage(named:"image3")!, type: .XL) ]
    
    
    var taxiappsVIP =
    [taxiapp(taxiname: "Uber", taxiprice: "SAR 26.92", taxiNearby: "Cars Nearby: 3", taxiImage:UIImage(named:"image1")!, type: .VIP) ,
                   
                    
     taxiapp(taxiname: "Bolt", taxiprice: "SAR 29.23", taxiNearby: "Cars Nearby: 1", taxiImage:UIImage(named:"image4")!, type: .VIP)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func DidChangedSegmented(_ sender: UISegmentedControl) {
        collectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            return taxiapps.count
        case 1:
            return taxiappsXL.count
        case 2:
            return taxiappsVIP.count
        default:
            return 0
        }
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
    var type : TYPES
}
