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
        FoodBrain(title: "Mong-Hin-Gar", subTitle: "Myanmar Traditional Food", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galle", image: "Mohinga-Soup"),
        FoodBrain(title: "La-Phat-Tote", subTitle: "Myanmar Traditional Food", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galle", image: "foodOne"),
        FoodBrain(title: "Mong-Hin-Gar", subTitle: "Myanmar Traditional Food", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galle", image: "foodOne")
    ]
    
    func foodCollections() -> [FoodBrain] {
        return foods
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
