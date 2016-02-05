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
    
    var itemList = [ScavengerHuntItem(name: "Cat"), ScavengerHuntItem(name: "Bird"), ScavengerHuntItem(name: "Bricks")]
    
    @IBAction func unwindToList(segue: UIStoryboardSegue) {
        if segue.identifier == "DoneItem" {
            let addVC = segue.sourceViewController as! AddViewController
            if let newItem = addVC.newItem {
                itemList += [newItem]
                let indexPath = NSIndexPath(forRow: itemList.count - 1, inSection: 0)
                tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
            }
        }
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemList.count
    }
    

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ListViewCell", forIndexPath: indexPath)

        let item = itemList[indexPath.row]
        cell.textLabel?.text = item.name
        
        return cell
    }
}