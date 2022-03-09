//
//  offerVC.swift
//  EasyTrip
//
//  Created by Shahad on 27/07/1443 AH.
//

import UIKit


enum Kinds {
    case Uber
    case Careem
    case All
    case Jenny
    case Bolt
}
class offerVC: UIViewController ,UICollectionViewDataSource, UICollectionViewDelegate , UICollectionViewDelegateFlowLayout{
    @IBOutlet weak var segemntedOffer: UISegmentedControl!
    

    
    
    var arrOffer = [offer(photo:UIImage(named:"Uber")!, adv:  NSLocalizedString("14", comment: ""), cobon: "#FRI14", kind: .Uber) ,
                    offer(photo:UIImage(named: "Jenny")!, adv:  NSLocalizedString("17", comment: ""), cobon: "#FRI17", kind: .Careem),offer(photo:UIImage(named: "Careem")!, adv:  NSLocalizedString("17", comment: ""), cobon: "#FRI17", kind: .Careem),offer(photo:UIImage(named: "Careem")!, adv:  NSLocalizedString("17", comment: ""), cobon: "#FRI17", kind: .Careem),offer(photo:UIImage(named: "Jenny")!, adv:  NSLocalizedString("17", comment: ""), cobon: "#FRI17", kind: .Jenny)]
    
    
    var offerUber = [offer(photo:UIImage(named:"Uber")!, adv:  NSLocalizedString("14", comment: ""), cobon: "#FRI14", kind: .Uber) , offer(photo:UIImage(named: "Careem")!, adv:  NSLocalizedString("17", comment: ""), cobon: "#FRI17", kind: .Careem) ]
    
    var offerCareem = [offer(photo:UIImage(named:"Careem")!, adv: NSLocalizedString("14", comment: ""), cobon: "#FRI14", kind: .Careem) , offer(photo:UIImage(named: "Bolt")!, adv:  NSLocalizedString("17", comment: ""), cobon: "#FRI17", kind: .Bolt)]
    ///

    
    @IBOutlet weak var collectionView: UICollectionView!
    
    //    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        self.title =  NSLocalizedString("offer", comment: "")
        
        // Do any additional setup after loading the view.
    }

    @IBAction func selectSegment(_ sender: UISegmentedControl) {
     
        collectionView.reloadData()
        
        
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    
        switch segemntedOffer.selectedSegmentIndex {
        case 0:
            return arrOffer.count
        case 1:
            return offerUber.count
        case 2:
            return offerCareem.count
        default:
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "offerCell", for: indexPath) as! offerCollectionViewCell
        
            switch segemntedOffer.selectedSegmentIndex {
            case 0:
                let offer = arrOffer[indexPath.row]
                
                cell.layer.cornerRadius = 20
                
                cell.setupCell(photo:offer.photo, ad: offer.adv, co: offer.cobon)
                return cell
            case 1:
                
                let offer = offerUber[indexPath.row]
                
                cell.layer.cornerRadius = 20
                
                cell.setupCell(photo:offer.photo, ad: offer.adv, co: offer.cobon)
                return cell
            case 2:
               
                let offer = offerCareem[indexPath.row]
                
                cell.layer.cornerRadius = 20
                
                cell.setupCell(photo:offer.photo, ad: offer.adv, co: offer.cobon)
                return cell
            default:
                return UICollectionViewCell()
            }
       
      
    
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
var kind : Kinds
  
}



