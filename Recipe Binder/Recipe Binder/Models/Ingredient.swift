//
//  Ingredient.swift
//  Recipe Binder
//
//  Created by Tingzhi Li on 3/29/18.
//  Copyright © 2018 tingzhi. All rights reserved.
//

import Foundation


struct Ingredient {
    
    var quantity: Double
    var unit: Unit
    var item: String
    
    init(_ quantity: Double, _ unit: Unit, of item: String) {
        self.quantity = quantity
        self.unit = unit
        self.item = item
    }
}

enum Unit {
    case g
    case lb
    case tsp
    case tbsp
    case clove
}
