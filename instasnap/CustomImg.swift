//
//  CustomImg.swift
//  instasnap
//
//  Created by Dara Nhep on 6/2/16.
//  Copyright © 2016 Dara Nhep. All rights reserved.
//

import UIKit

class CustomImg: UIImageView {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
        
    }

}
