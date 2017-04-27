//
//  ChecklistItem.swift
//  Checklists
//
//  Created by jingdi on 2017/4/26.
//  Copyright © 2017年 ekwing. All rights reserved.
//

import Foundation

class ChecklistItem: NSObject {
    var text = ""
    var checked = false
    
    func toggleChecked() {
        checked = !checked
    }
}
