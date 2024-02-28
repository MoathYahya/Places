//
//  PlacesViewController.swift
//  PresentItemsOnMap
//

import UIKit
import GoogleMaps

class PlacesViewController: UIViewController {
    
    @IBOutlet private var mapView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
      
        let options = GMSMapViewOptions()
        options.camera = GMSCameraPosition.camera(withLatitude: 31.9533997, longitude: 35.9064499, zoom: 6.0)
        options.frame = mapView.bounds
//
        let mapView = GMSMapView(options: options)

        ////        self.view.addSubview(mapView)
        self.mapView.addSubview(mapView)

        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 31.9533997, longitude: 35.9064499)
        marker.title = "Sydney"
        marker.snippet = "Australia"
        marker.map = mapView
        
    }

}

/*
 var mapView: GMSMapView!

 func showCurrentLocationOnMap(){
     mapView.settings.myLocationButton = true
     mapView.isMyLocationEnabled = true
     let camera = GMSCameraPosition.camera(withLatitude: 11.11, longitude: 12.12, zoom: 14.0) //Set default lat and long
     mapView = GMSMapView.map(withFrame: CGRect(x: 0, y: 0, width: self.viewMap.frame.size.width, height: self.viewMap.frame.size.height), camera: camera)
     self.viewMap.addSubview(mapView)
     for data in nearByPlacesArray!{
         let location = CLLocationCoordinate2D(latitude: data.latitude!, longitude: data.longitude!)
         print("location: \(location)")
         let marker = GMSMarker()
         marker.position = location
         marker.snippet = data.name!
         marker.map = mapView
     }
 }

 func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
     self.showCurrentLocationOnMap()
     self.locationManager.stopUpdatingLocation()
 }
 */

extension PlacesViewController: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else {
            return
        }
    }
}
