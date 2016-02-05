//
//  ListViewController.swift
//  Scavenger Hunt
//
//  Created by Cameron Farzaneh on 2/4/16.
//  Copyright © 2016 CFarzaneh. All rights reserved.
//

import Foundation
import UIKit

class ListViewController: UITableViewController {
    
    var itemList = ["Cat", "Bird", "Brick"]
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemList.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ListViewCell", forIndexPath: indexPath)
        cell.textLabel?.text = itemList[indexPath.row]
        
        return cell
    }
}