//
//  Checklist.swift
//  Checklists
//
//  Created by Matthijs on 07/07/2016.
//  Copyright © 2016 Razeware. All rights reserved.
//

import UIKit

class Checklist: NSObject, NSCoding {
  var name = ""
  var items = [ChecklistItem]()
  var iconName: String
  
  init(name: String) {
    self.name = name
    iconName = "No Icon"
    super.init()
  }
  
  required init?(coder aDecoder: NSCoder) {
    name = aDecoder.decodeObject(forKey: "Name") as! String
    items = aDecoder.decodeObject(forKey: "Items") as! [ChecklistItem]
    iconName = aDecoder.decodeObject(forKey: "iconName") as! String
    super.init()
  }
  
  func encode(with aCoder: NSCoder) {
    aCoder.encode(name, forKey: "Name")
    aCoder.encode(items, forKey: "Items")
    aCoder.encode(iconName, forKey: "iconName")
  }
  
  func countUnCheckedItems() -> Int {
    return items.reduce(0){ cnt, item in cnt + (item.checked ? 0 : 1) }
  }
}
