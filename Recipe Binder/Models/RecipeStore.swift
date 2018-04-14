//
//  RecipeStore.swift
//  Recipe Binder
//
//  Created by Tingzhi Li on 3/27/18.
//  Copyright © 2018 tingzhi. All rights reserved.
//

// Store all the recipes

import Foundation
import SQLite


class RecipeStore {

    let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
    var recipeStore: Connection?
    let recipes = Table("recipes")
    let id = Expression<Int64>("id")
    let name = Expression<String>("name")
    
    init() {
        do {
            recipeStore = try Connection("\(path)/recipeStore.sqlite3")
        } catch {
            print("Error: \(error)")
        }
        
        do {
            try recipeStore?.run(recipes.create(ifNotExists: true) { table in
            table.column(id, primaryKey: .autoincrement)
            table.column(name)
            })
        } catch {
            print("Error: \(error)")
        }
    }

    func addRecipe(name: String) {
        do {
            let rowId = try recipeStore?.run(recipes.insert(self.name <- name))
            print("Inserted id: \(String(describing: rowId))")
        } catch {
            print("Insertion failed: \(error)")
        }
    }
    
    //    func addRecipe(name: String, ingredients: [Ingredient]) {
    //        let recipe = Recipe(title: title, ingredients: ingredients)
    //
    //    }

    func updateRecipe(name: String) {
        
    }
   
    func deleteRecipe(name: String) {
        
    }
    
    func deleteAllRecipes() {
        
    }
}
