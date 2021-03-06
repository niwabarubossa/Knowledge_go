//
//  ViewController.swift
//  Knowledge_Go
//
//  Created by Ni Ryogo on 2021/03/06.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController,CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    var locManager: CLLocationManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.setUpCLLocationManager()
        self.getLocationPermission()
    }
    
    private func setUpCLLocationManager(){
        print("setUpCLLocationManager")
        locManager = CLLocationManager()
        locManager.delegate = self
    }
    
    private func getLocationPermission(){
        locManager.requestWhenInUseAuthorization()
        if CLLocationManager.locationServicesEnabled() {
            switch CLLocationManager.authorizationStatus() {
                case .authorizedWhenInUse:
                    // 座標の表示
                    print("ここで静的な場所に移動させる処理")
//                    locManager.startUpdatingLocation()
                    break
                default:
                    break
            }
        }
    }

//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations:[CLLocation]) {
//        let lonStr = (locations.last?.coordinate.longitude.description)!
//        let latStr = (locations.last?.coordinate.latitude.description)!
//        print("lon : " + lonStr)
//        print("lat : " + latStr)
//    }
    
    //ios14.0以上
//    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
//     let status = manager.authorizationStatus
//     switch status {
//       case .authorizedAlways, .authorizedWhenInUse:
//        print("authorizedAlways")
//       case .notDetermined, .denied, .restricted:
//        print("notDetermined")
//       default:
//        print("default")
//     }
//    }

}

