//
//  SettingsController.swift
//  Settings
//
//  Created by Alex Aslett on 7/24/17.
//  Copyright © 2017 One Round Technology. All rights reserved.
//

import UIKit

class SettingsController {
    
    // MARK: - Internal Properties
    
    let mySettings: [Setting]
    
    // MARK: - initalizer
    
    init(){
        let music = Setting(name: "Music", image: UIImage(named: "music"), isSet: false)
        let apps = Setting(name: "Apps", image: UIImage(named: "app"), isSet: true)
        let books = Setting(name: "Books", image: UIImage(named: "ibooks"), isSet: false)
        let updates = Setting(name: "Updates", image: UIImage(named: "app"), isSet: false )
        
        mySettings = [music, apps, books, updates]
    }
    
}
