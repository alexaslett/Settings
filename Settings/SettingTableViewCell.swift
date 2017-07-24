//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Alex Aslett on 7/24/17.
//  Copyright © 2017 One Round Technology. All rights reserved.
//

import UIKit

protocol SettingTableViewCellDelegate: class {
    func settingValueChanged(_ cell: SettingTableViewCell, selected: Bool)
}

class SettingTableViewCell: UITableViewCell {

    // MARK: - IBOutletss
    
    // Switch
    @IBOutlet weak var settingSwitch: UISwitch!
    // Image
    @IBOutlet weak var iconImageView: UIImageView!
    // Label
    @IBOutlet weak var settingLabel: UILabel!
    
    // MARK: - Internal Properties
    
    weak var delegate: SettingTableViewCellDelegate?
    
    
    
    // MARK: - Lifecycle
    
    func updateViews(with setting: Setting?) {
        guard let setting = setting else { return }
        // Update label
        settingLabel.text = setting.name
        // Update image
        iconImageView.image = setting.image
        // Update the switch
        settingSwitch.isOn = setting.isSet
        // Update the background color
        backgroundColor = setting.isSet ? .yellow : .white
        
    }
    
    // MARK: - Internal method
    
    @IBAction func settingSwitchValueChanged() {
        // When the value changes, we want to update the cell.
        // Need to actually update the setting data as well.
        delegate?.settingValueChanged(self, selected: settingSwitch.isOn)
    }
  
}
