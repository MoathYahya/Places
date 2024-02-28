//
//  CustomMarker.swift
//  PresentItemsOnMap
//
//  Created by Moath Yahia on 2/27/24.
//

import UIKit

class CustomMarker: UIView {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var markerImage: UIImageView!
    
    
    override func draw(_ rect: CGRect) {
       
        markerImage.layer.cornerRadius = markerImage.frame.size.width / 2
        markerImage.layer.masksToBounds = true
    }
    

}
