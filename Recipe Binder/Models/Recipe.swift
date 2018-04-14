//
//  recipe.swift
//  Recipe Binder
//
//  Created by Tingzhi Li on 3/27/18.
//  Copyright © 2018 tingzhi. All rights reserved.
//

import Foundation

struct Recipe {
    
    static var idFactory = 0
    
    static func getUniqueId() -> Int {
        idFactory += 1
        return idFactory
    }
    
    var id: Int
    var title: String
    var ingredients: [Ingredient]
    // TODO: Add cooking instructions
    //    var instructions: [String]
    
    init(title: String, ingredients: [Ingredient]) {
        self.id = Recipe.getUniqueId()
        self.title = title
        self.ingredients = ingredients
    }
    
}
