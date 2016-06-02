//
//  CustomizeButton.swift
//  instasnap
//
//  Created by Dara Nhep on 6/1/16.
//  Copyright © 2016 Dara Nhep. All rights reserved.
//

import Foundation
import UIKit

class CustomButton: UIButton {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.layer.cornerRadius = 5.0
        self.layer.borderColor = UIColor(white: 1.0, alpha: 0.35).CGColor
        self.layer.borderWidth = 1.5
        self.backgroundColor = UIColor.clearColor()
        
    }
    
}
