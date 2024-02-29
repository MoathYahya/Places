//
//  PlacesViewController.swift
//  PresentItemsOnMap
//

import UIKit
import GoogleMaps

class PlacesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet private weak var containerView: UIView!
    @IBOutlet private weak var collectionView: UICollectionView!
    
    private var mapView = GMSMapView()
    private var viewModel = PlacesViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.getAllPlaces()
        setupMap()
        setupCollectionView()
    }
    
    func setupMap() {
        
        let options = GMSMapViewOptions()
        options.camera = GMSCameraPosition.camera(withLatitude: Constants.GeneralConstants.baseLatitude, longitude: Constants.GeneralConstants.baseLongtitude, zoom: Constants.FloatConstants.kEleven)
        options.frame = containerView.bounds
        mapView = GMSMapView(options: options)
        containerView.addSubview(mapView)
        mapView.delegate = self
        
        for place in viewModel.placesModel {
            let location = CLLocationCoordinate2D(latitude: place.latitude, longitude: place.longtitude)
            let marker = GMSMarker()
            marker.position = location
            marker.snippet = place.name
            marker.userData = place
            marker.map = mapView
        }
    }
    
    private func setupCollectionView() {
        
        collectionView.register(UINib(nibName: Constants.ViewsName.placeCell, bundle: nil), forCellWithReuseIdentifier: PlaceCell.cell)
        collectionView.reloadData()
        
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.sectionInset = UIEdgeInsets(top: .zero
                                        ,left: Constants.FloatConstants.kFive,
                                        bottom: .zero,
                                           right: Constants.FloatConstants.kFive)
        layout.minimumLineSpacing = Constants.FloatConstants.kFive
        layout.itemSize = CGSize(width: collectionView.frame.size.width - Constants.FloatConstants.kThirtyFive, height: collectionView.frame.size.height)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return Constants.IntegerConstants.kOne
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.numberOfItemInSection
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PlaceCell.cell, for: indexPath) as? PlaceCell  else {
            return UICollectionViewCell()
        }
        
        let temp = viewModel.placesModel[indexPath.row]            
        cell.titleLabel.text = temp.name
        cell.placeImage.image = UIImage(named: temp.image)
        return cell
    }
     
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let temp = viewModel.placesModel[indexPath.row]
                
        let camera = GMSCameraPosition.camera(withLatitude: temp.latitude ,longitude: temp.longtitude , zoom: Constants.FloatConstants.kFourteen)
        
        mapView.animate(to: camera)
    }
}

extension PlacesViewController: GMSMapViewDelegate {
    func mapView(_ mapView: GMSMapView, didTap marker: GMSMarker) -> Bool {
        
        let placeModel = marker.userData as? PlaceModel

        if viewModel.clickedOnPlace(placeId: placeModel?.id ?? .zero) {
            let detailsView = PlaceDetailsView()
            detailsView.appear(sender: self, tempModel: placeModel)
            return true
        }
        
        let customMarkerView = CustomMarker.loadFromNib()
        customMarkerView.fillData(title: placeModel?.name ?? "", image: placeModel?.image ?? "")
        marker.iconView = customMarkerView
        return true
    }    
}
