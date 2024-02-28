//
//  PlacesViewModel.swift
//  PresentItemsOnMap
//
//  Created by Moath Yahia on 2/26/24.
//

import Foundation

class PlacesViewModel {
    
    var placesModel = [PlaceModel]()
    var clickedSet = Set<Int>()
        
    func numberOfItemInSection() -> Int {
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
