//
//  SettingsController.swift
//  Settings
//
//  Created by Alex Aslett on 7/24/17.
//  Copyright © 2017 One Round Technology. All rights reserved.
//

import UIKit

class SettingsController {
    
    static let shared = SettingsController()
    
    
    // MARK: - Internal Properties
    
    private let mySettings: [Setting]
    
    // MARK: - Computed Properties
    
    var numberOfSettings: Int {
        return mySettings.count
    }
    
    // MARK: - initalizer
    
    init(){
        let music = Setting(name: "Music", image: UIImage(named: "music"), isSet: false)
        let apps = Setting(name: "Apps", image: UIImage(named: "app"), isSet: true)
        let books = Setting(name: "Books", image: UIImage(named: "ibooks"), isSet: false)
        let updates = Setting(name: "Updates", image: UIImage(named: "app"), isSet: false )
        
        mySettings = [music, apps, books, updates]
    }
    // MARK: - Internal methods
    func setting(at indexPath: IndexPath) -> Setting {
        return mySettings[indexPath.row]
    }
}
