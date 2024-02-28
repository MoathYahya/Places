//
//  CustomView.swift
//  PresentItemsOnMap
//
//  Created by Moath Yahia on 2/27/24.
//

import Foundation
import UIKit

class CustomView: UIView {
    
   
    
//    var view: UIView {
//        let view = UIView()
//    }
    
    
    func createCustomMarkerView() -> UIView {
        var markerLabel: UILabel {
            let label = UILabel()
            
            return label
        }
        
        var markerImage: UIImageView {
            let image = UIImageView()
            
            return image
        }
        
        var containerStack: UIStackView {
            let stack = UIStackView(arrangedSubviews: [markerLabel, markerImage])
            stack.axis = .vertical
            stack.spacing = 10
            
            return stack
        }
        containerStack.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(containerStack)
        
        NSLayoutConstraint.activate([
            containerStack.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: .zero),
            containerStack.topAnchor.constraint(equalTo: self.topAnchor, constant: .zero),
            containerStack.widthAnchor.constraint(equalToConstant: 100),
            containerStack.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        return containerStack
    }
}
