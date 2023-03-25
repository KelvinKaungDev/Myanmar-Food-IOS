//
//  File.swift
//  
//
//  Created by Kaung Htet OO on 3/18/23.
//

import Foundation
import SwiftUI

struct Food {
    var count : Int?
    var foods = [
        FoodBrain(id: 0, title: "Mong-Hin-Gar", subTitle: "Myanmar Traditional Food", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", image: "foodOne"),
        FoodBrain(id: 1, title: "La-Phat-Tote", subTitle: "Myanmar Traditional Food", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ", image: "foodTwo"),
        FoodBrain(id: 2, title: "Mong-Hin-Gar", subTitle: "Myanmar Traditional Food", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", image: "foodThree")
    ]
    
    func foodCount() -> Int {
        return foods.count
    }
    
    func foodCollections() -> [FoodBrain] {
        return foods
    }
    
    func getFoods(i : Int) -> FoodBrain {
        return foods[i]
    }
    
    func getTitle(count : Int) -> String {
        return foods[count].title
    }
    
    func getSubTitle(count : Int) -> String {
        return foods[count].subTitle
    }
    
    func description(count : Int) -> String {
        return foods[count].description
    }
    
    func image(count : Int) -> String {
        return foods[count].image
    }
}
