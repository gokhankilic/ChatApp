//
//  GradientView.swift
//  Smack
//
//  Created by Gökhan Kılıç on 12.02.2019.
//  Copyright © 2019 Gökhan Kılıç. All rights reserved.
//

import UIKit

@IBDesignable // instant render for storyboard
class GradientView: UIView {
    
    @IBInspectable var topColor:UIColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1) { //to add property
        didSet{
            self.setNeedsLayout()
        }
        
        
        
    }
    @IBInspectable var bottomColor:UIColor = #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1) { //to add property
        didSet{
            self.setNeedsLayout()
        }
        
    }
    
    
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    
    
}
