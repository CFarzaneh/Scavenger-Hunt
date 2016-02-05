//
//  ScavengerHuntItem.swift
//  Scavenger Hunt
//
//  Created by Cameron Farzaneh on 2/4/16.
//  Copyright © 2016 CFarzaneh. All rights reserved.
//

import Foundation
import UIKit

class ScavengerHuntItem: NSObject {
    let name: String
    var photo: UIImage?
    var completed: Bool {
        get {
            return photo != nil
        }
    }
    init(name: String) {
        self.name = name
    }
    
}