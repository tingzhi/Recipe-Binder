//
//  RecipeStore.swift
//  Recipe Binder
//
//  Created by Tingzhi Li on 3/27/18.
//  Copyright © 2018 tingzhi. All rights reserved.
//

import Foundation

// Store all the recipes

class RecipeStore {
    
    var recipeList = [Recipe]()
    
    func addRecipe(title: String, ingredients: [Ingredient]) {
        let recipe = Recipe(title: title, ingredients: ingredients)
        recipeList.append(recipe)
    }
    
    func removeRecipe(title: String) {
        
    }
    
    func removeRecipe(id: Int) {
        
    }
    
    func removeAllRecipes() {
        
    }
}
