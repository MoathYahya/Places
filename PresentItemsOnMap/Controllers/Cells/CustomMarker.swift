//
//  CustomMarker.swift
//  PresentItemsOnMap
//
//  Created by Moath Yahia on 2/27/24.
//

import UIKit

class CustomMarker: UIView {

    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var markerImage: UIImageView!
    
    override func draw(_ rect: CGRect) {
        markerImage.layer.cornerRadius = markerImage.frame.size.width / Constants.FloatConstants.kTwo
        markerImage.layer.masksToBounds = true
    }
    
    class func loadFromNib() -> CustomMarker {
        return Bundle.main.loadNibNamed(Constants.ViewsName.customMarker, owner: nil, options: nil)?.first as! CustomMarker
    }
    
    func fillData(title: String, image: String) {
        titleLabel.text = title
        markerImage.image = UIImage(named: image)
    }
}
