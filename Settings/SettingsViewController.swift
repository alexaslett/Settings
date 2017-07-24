//
//  SettingsViewController.swift
//  Settings
//
//  Created by Alex Aslett on 7/24/17.
//  Copyright © 2017 One Round Technology. All rights reserved.
//

import UIKit

class SettingsViewController: UITableViewController {
    
    // MARK: - TableView DataSource
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SettingsController.shared.numberOfSettings
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create an instance of the cell, Custom Cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingCell", for: indexPath) as? SettingTableViewCell
        // find indexPath of what you want to display 
        let setting = SettingsController.shared.setting(at: indexPath)
        cell?.updateViews(with: setting)
       
        return cell ?? UITableViewCell()
    }

}
