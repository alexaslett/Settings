//
//  Setting.swift
//  Settings
//
//  Created by Alex Aslett on 7/24/17.
//  Copyright © 2017 One Round Technology. All rights reserved.
//

import UIKit

class Setting {
    
    // MARK: - Internal Properties
    
    let name: String
    let image: UIImage?
    let isSet: Bool
    
    // MARK: - Initializers
    
    init(name: String, image: UIImage?, isSet: Bool){
        self.name = name
        self.image = image
        self.isSet = isSet
    }
    
    
}
