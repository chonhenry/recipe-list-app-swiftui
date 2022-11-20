//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by Henry Chon on 11/19/22.
//

import Foundation

class ReciprModel: ObservableObject {
    @Published var recipes = [Recipe]()
    
    init() {
        self.recipes = DataService.getLocalData()
    }
}
