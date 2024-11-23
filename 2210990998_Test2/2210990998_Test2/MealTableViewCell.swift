//
//  MealTableViewCell.swift
//  2210990998_Test2
//
//  Created by Vanshika Choudhary on 23/11/24.
//

import UIKit

class MealTableViewCell: UITableViewCell {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var calorieLabel: UILabel!
    @IBOutlet var preptimeLabel: UILabel!
    @IBOutlet var mealImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func update(with meal: Meal) {
        nameLabel.text = meal.recipeName
        calorieLabel.text = "\(meal.calorieCount) kcal"
        preptimeLabel.text = "\(meal.preparationTime) min"
        if let mealImageData = meal.image {
            mealImage.image = mealImageData
        } else {
            mealImage.image = UIImage(named: "placeholder")
        }
    }
}
