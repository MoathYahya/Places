//
//  PlacesViewModel.swift
//  PresentItemsOnMap
//
//  Created by Moath Yahia on 2/26/24.
//

import Foundation

class PlacesViewModel {
    
    var placesModel = [PlaceModel]()
    private var clickedSet = Set<Int>()
        
    var numberOfItemInSection: Int {
        return placesModel.count
    }
    
    func getAllPlaces() {
        placesModel = PlacesData().allPlaces()
    }
    
    func clickedOnPlace(placeId: Int) -> Bool {
        
        if clickedSet.contains(placeId) {
            return true
        } else {
            clickedSet.insert(placeId)
        }
        return false
    }
}
