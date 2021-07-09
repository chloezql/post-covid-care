//
//  CollectionViewCell.swift
//  HealthCareLocatorSDKDemo
//
//  Created by sunshine on 6/24/21.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var conditionName: UILabel!
    
    
    func configure(with conditionNameInput:String){
        conditionName.text = conditionNameInput
    }
    
    var cornerRadius: CGFloat = 5.0

        override func awakeFromNib() {
            super.awakeFromNib()
                
            
            // Apply rounded corners to contentView
            contentView.layer.cornerRadius = cornerRadius
//            contentView.layer.masksToBounds = true
//
//            // Set masks to bounds to false to avoid the shadow
//            // from being clipped to the corner radius
            layer.cornerRadius = cornerRadius
//            layer.masksToBounds = false
//
//            // Apply a shadow
//            layer.shadowRadius = 2.0
//            layer.shadowOpacity = 0.10
//            layer.shadowColor = UIColor.black.cgColor
//            layer.shadowOffset = CGSize(width: 0, height: 1)
            layer.borderWidth = 1.5
            layer.borderColor = borderColor
            
        
            
            
        }
    
    override var isSelected: Bool {
            didSet {
                layer.borderColor = borderColor
            }
        }

        private var borderColor: CGColor {
            return isSelected ? UIColor.orange.cgColor : UIColor.lightGray.cgColor
        }
    
        
        override func layoutSubviews() {
            super.layoutSubviews()
            
            // Improve scrolling performance with an explicit shadowPath
            layer.shadowPath = UIBezierPath(
                roundedRect: bounds,
                cornerRadius: cornerRadius
            ).cgPath
        }
    
}
