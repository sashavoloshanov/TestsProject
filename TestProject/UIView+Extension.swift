//
//  UIView+Extension.swift
//  TestProject
//
//  Created by Voloshanov Sasha on 9/25/17.
//  Copyright © 2017 Sasha Voloshanov. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func setGradientBackground() {
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [UIColor.red.cgColor, UIColor.yellow.cgColor, UIColor.green.cgColor]
        gradientLayer.locations = [0.0, 0.45, 0.65, 1.0]
        gradientLayer.startPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 0.0)
        
        layer.insertSublayer(gradientLayer, at: 0)
    }
}
