//
//  CustomTextField.swift
//  instasnap
//
//  Created by Dara Nhep on 6/1/16.
//  Copyright © 2016 Dara Nhep. All rights reserved.
//

import UIKit

class CustomTextField: UITextField {

    override func awakeFromNib() {
        self.layer.cornerRadius = 5.0
        self.backgroundColor = UIColor(white: 1.0, alpha: 0.15)
        
    }
    
    override func textRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset(bounds, 15, 0)
    }
    
    override func editingRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset(bounds, 15, 0)
    }
    
}
