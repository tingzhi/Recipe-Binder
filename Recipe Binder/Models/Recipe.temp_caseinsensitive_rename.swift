//
//  recipe.swift
//  Recipe Binder
//
//  Created by Tingzhi Li on 3/27/18.
//  Copyright © 2018 tingzhi. All rights reserved.
//

import Foundation

class Recipe {
    
    struct Indredient {
        var item: String
        var quantity: Double
        var unit: String
    }
    
    var title: String
    var indredientList: [Indredient]
    var instructions: [String]
}
