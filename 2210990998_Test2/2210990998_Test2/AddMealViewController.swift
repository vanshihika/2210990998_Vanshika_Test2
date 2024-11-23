//
//  AddMealViewController.swift
//  2210990998_Test2
//
//  Created by Vanshika Choudhary on 23/11/24.
//

import UIKit

class AddMealViewController: UITableViewController {
    var meals: Meal?

    @IBOutlet var recipeNameTextField: UITextField!
    @IBOutlet var calorieTextField: UITextField!
    @IBOutlet var prepTimeTextField: UITextField!
    @IBOutlet var ingredientsTextField: UITextField!
    @IBOutlet var instructionsTextField: UITextField!
    @IBOutlet var saveButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let meal = meals {
            recipeNameTextField.text = meal.recipeName
            calorieTextField.text = "\(meal.calorieCount)"
            prepTimeTextField.text = "\(meal.preparationTime)"
            ingredientsTextField.text = meal.ingredients
            instructionsTextField.text = meal.preparationInstructions
            title = "Edit Meal"
            } else {
            title = "Add Meal"
            }
        
        updateSaveButtonState()
    }
    
    init?(coder: NSCoder, meals: Meal?) {
        self.meals = meals
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func updateSaveButtonState() {
            let recipeName = recipeNameTextField.text ?? ""
            let calorieText = calorieTextField.text ?? ""
            let prepTimeText = prepTimeTextField.text ?? ""
            saveButton.isEnabled = !recipeName.isEmpty && !calorieText.isEmpty && !prepTimeText.isEmpty
        }
    
    @IBAction func textEditingChanged(_ sender: UITextField) {
        updateSaveButtonState()
    }
    
    func containsSingleEmoji(_ textField: UITextField) -> Bool {
        guard let text = textField.text, text.count == 1 else {
            return false
        }
        
        let isCombinedIntoEmoji = text.unicodeScalars.count > 1 && text.unicodeScalars.first?.properties.isEmoji ?? false
        let isEmojiPresentation = text.unicodeScalars.first?.properties.isEmojiPresentation ?? false
        
        return isEmojiPresentation || isCombinedIntoEmoji
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "saveUnwind" else { return }

        let recipeName = recipeNameTextField.text ?? ""
        let calorieCount = Int(calorieTextField.text ?? "") ?? 0
        let prepTime = Int(prepTimeTextField.text ?? "") ?? 0
        let ingredientsText = ingredientsTextField.text ?? ""
        let instructions = instructionsTextField.text ?? ""
    }
}
