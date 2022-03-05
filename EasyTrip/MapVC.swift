//
//  MapVC.swift
//  EasyTrip
//
//  Created by Shahad on 02/08/1443 AH.
//


import UIKit
import MapKit
import CoreLocation
class MapVC: UIViewController , CLLocationManagerDelegate {

    @IBOutlet weak var mapview: MKMapView!
    var locationMnager = CLLocationManager()
    override func viewDidLoad() {
        
        super.viewDidLoad()
        locationMnager.delegate = self
        locationMnager.desiredAccuracy = kCLLocationAccuracyBest

        if  isLocationServiceEnabled(){
            checkAutoraization()
            
        }else{
            
        showAlert(msg: "please Enable Location Service")
        }
    }
    
    func isLocationServiceEnabled () ->Bool {
        return CLLocationManager.locationServicesEnabled()
    
    }
        
    
    func checkAutoraization () {
        switch locationMnager.authorizationStatus {
        case .notDetermined:
            locationMnager.requestWhenInUseAuthorization()
            break
        case .authorizedWhenInUse:
            locationMnager.startUpdatingLocation()
            mapview.showsUserLocation = true
            break
        case .authorizedAlways:
           locationMnager.startUpdatingLocation()
            mapview.showsUserLocation = true
            break
        case .denied:
            showAlert(msg: "Please authorize acces to location")
            break
        case .restricted:
            showAlert(msg: " authorization restricted")
            break
        default:
            print("default..")
            break
        }
            
        }
         
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last{
            print("location : \(location.coordinate)")
            zoomToUserLocation(location: location)
            
        }
    }
    
    func zoomToUserLocation(location:CLLocation){
        let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: 600, longitudinalMeters: 600 )
        mapview.setRegion(region , animated: true)
        
    }
    
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        switch status {
       
        case .authorizedWhenInUse:
          locationMnager.startUpdatingLocation()
            mapview.showsUserLocation = true
            break
        case .authorizedAlways:
        //    locationMnager.requestWhenInUseAuthorization()
            locationMnager.startUpdatingLocation()
            mapview.showsUserLocation = true
            break
        case .denied:
            showAlert(msg: "Please authorize acces to location")
            break
      
        default:
            print("default..")
            break
        }
    }
    
    
    func showAlert(msg: String){
        let alert = UIAlertController(title: "Alert", message: msg, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Close", style: .default ))
         present (alert, animated: true, completion: nil)
        
    }

    
    }
    

