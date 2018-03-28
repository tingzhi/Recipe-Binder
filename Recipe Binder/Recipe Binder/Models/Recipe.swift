//
//  recipe.swift
//  Recipe Binder
//
//  Created by Tingzhi Li on 3/27/18.
//  Copyright © 2018 tingzhi. All rights reserved.
//

import Foundation

class Recipe {
    
    enum Unit {
        case g
        case lb
        case tsp
        case tbsp
        case clove
    }
    
    struct Indredient {
        var item: String
        var quantity: Double
        var unit: Unit
    }
    
    var id: Int
    var title: String
    var ingredientList: [Indredient]
    //var instructions: [String]
    
    
}
