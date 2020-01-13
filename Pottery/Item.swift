//
//  Item.swift
//  Pottery
//
//  Created by Sabreena Abedin on 12/24/19.
//  Copyright © 2019 Sabreena Abedin. All rights reserved.
//

import Foundation

enum PotteryType {
    case bowl, mug, vase
}

struct Item {
    var id : Int
    var name : String
    var type : PotteryType
    var created : NSDate?
}
