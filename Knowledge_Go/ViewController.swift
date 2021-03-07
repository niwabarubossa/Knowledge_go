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
        locManager = CLLocationManager()
        locManager.delegate = self
    }
    
    private func getLocationPermission(){
        locManager.requestWhenInUseAuthorization()
        if CLLocationManager.locationServicesEnabled() {
            switch CLLocationManager.authorizationStatus() {
                case .authorizedWhenInUse:
                    self.moveMapKit()
//                    座標の表示
//                    locManager.startUpdatingLocation()
//                    コメントアウトの追加
                    break
                default:
                    break
            }
        }
    }
    
    private func moveMapKit(){
        print("静的な場所に移動させる処理")
//        let center = mapView.convert(tapPoint, toCoordinateFrom: mapView)
//        let lonStr = center.longitude.description
//        let latStr = center.latitude.description
    }

//    現在地の緯度経度を表示
//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations:[CLLocation]) {
//        let lonStr = (locations.last?.coordinate.longitude.description)!
//        let latStr = (locations.last?.coordinate.latitude.description)!
//        print("lon : " + lonStr)
//        print("lat : " + latStr)
//    }
    

    
    @available(iOS 14.0, *)
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
    //ios 14,0以上はauthorizatoinStatusを用いる
     let status = manager.authorizationStatus
     switch status {
       case .authorizedAlways, .authorizedWhenInUse:
        print("authorizedAlways or authorizedWhenInUse")
       case .notDetermined, .denied, .restricted:
        print("notDetermined")
       default:
        print("default")
     }
    }

}

