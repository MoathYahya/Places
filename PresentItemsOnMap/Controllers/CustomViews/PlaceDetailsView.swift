//
//  PlaceDetailsView.swift
//  PresentItemsOnMap
//
//  Created by Moath Yahia on 2/28/24.
//

import UIKit

class PlaceDetailsView: UIViewController {

    @IBOutlet private weak var backView: UIView!
    @IBOutlet private weak var contentView: UIView!
    @IBOutlet private weak var doneButton: UIButton!
    @IBOutlet private weak var placeImage: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var detailsLabel: UILabel!
    
    init() {
        super.init(nibName: Constants.ViewsName.placeDetailsView, bundle: nil)
        self.modalPresentationStyle = .overFullScreen
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
    }
    
    func configView() {
        view.backgroundColor = .clear
        backView.backgroundColor = .black.withAlphaComponent(Constants.FloatConstants.kZeroSix)
        backView.alpha = .zero
        contentView.alpha = .zero
        contentView.layer.cornerRadius = Constants.FloatConstants.kTen

        doneButton.layer.cornerRadius = Constants.FloatConstants.kTen
        doneButton.addTarget(self, action: #selector(doneTapped), for: .touchUpInside)
    }
    
    func appear(sender: UIViewController, tempModel: PlaceModel?) {
        sender.present (self, animated: false) {
            self.show()
            self.fillData(title: tempModel?.name ?? "",
                          details: tempModel?.details ?? "",
                          imageString: tempModel?.image ?? "")
                
        }
    }
    
    private func fillData(title: String, details: String, imageString: String) {
        placeImage.image = UIImage(named: imageString)
        titleLabel.text = title
        detailsLabel.text = details
    }
        
    private func show() {
        UIView.animate(withDuration: Constants.FloatConstants.kOne, delay: Constants.FloatConstants.kZeroOne) {
            self.backView.alpha = Constants.FloatConstants.kOne
            self.contentView.alpha = Constants.FloatConstants.kOne
        }
    }
    
    private func hide() {
        UIView.animate(withDuration: Constants.FloatConstants.kOne, delay: .zero, options: .curveEaseOut) {
            self.backView.alpha = .zero
            self.contentView.alpha = .zero
        } completion: { _ in
            self.dismiss (animated: false)
            self.removeFromParent()
        }
    }
    
    @objc func doneTapped(_ sender: UIButton) {
        hide()
    }
}

