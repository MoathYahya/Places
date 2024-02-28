//
//  PlacesCell.swift
//  PresentItemsOnMap
//
//  Created by Moath Yahia on 2/27/24.
//

import UIKit

class PlaceCell: UICollectionViewCell {

    static let cell = Constants.ViewsName.cellIdentifier
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var placeImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        placeImage.layer.cornerRadius = Constants.FloatConstants.kEight
        placeImage.layer.shadowOpacity = Float(Constants.FloatConstants.kOne)
        placeImage.layer.masksToBounds = true
    }

}
