//
//  Meal.swift
//  2210990998_Test2
//
//  Created by Vanshika Choudhary on 23/11/24.
//

import Foundation
import UIKit

struct Meal {
    var recipeName: String
    var category: String
    var calorieCount: Int
    var preparationTime: Int
    var ingredients: String
    var preparationInstructions: String
    var image: UIImage?
}

let sampleMeals: [Meal] = [
    Meal(
        recipeName: "Pasta",
        category: "Vegetarian",
        calorieCount: 300,
        preparationTime: 15,
        ingredients: "Pasta, Olive Oil, Garlic, Salt",
        preparationInstructions: "Boil pasta. Sauté garlic in olive oil. Mix with pasta and serve.",
        image: UIImage(named: "_you!_ _no, you!_")
    ),
    Meal(
        recipeName: "Chicken Salad",
        category: "Non-Vegetarian",
        calorieCount: 350,
        preparationTime: 20,
        ingredients: "Chicken Breast, Lettuce, Tomato, Dressing",
        preparationInstructions: "Grill chicken. Mix with lettuce, tomato, and dressing.",
        image: nil
    )
]
    
