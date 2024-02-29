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
    private static var nib: UINib?

    override func draw(_ rect: CGRect) {
        markerImage.layer.cornerRadius = markerImage.frame.size.width / Constants.FloatConstants.kTwo
        markerImage.layer.masksToBounds = true
    }
    
    class func loadFromNib() -> CustomMarker {
        if let nib = Self.nib {
            return nib.instantiate(withOwner: nil, options: nil).first as! CustomMarker
        } else {
            let newNib = UINib(nibName: Constants.ViewsName.customMarker, bundle: nil)
            Self.nib = newNib
            return newNib.instantiate(withOwner: nil, options: nil).first as! CustomMarker
        }
    }
    
    func fillData(title: String, image: String) {
        titleLabel.text = title
        markerImage.image = UIImage(named: image)
    }
}
