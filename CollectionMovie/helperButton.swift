//
//  helperButton.swift
//  CollectionMovie
//
//  Created by marco rodriguez on 01/06/22.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return cornerRadius
        }
        
        set {
            self.layer.cornerRadius = newValue
        }
    }
    
}
