import Foundation
import SwiftUI

struct Food {
    var count : Int?
    
    var foods = [
        FoodBrain(id: 0, title: "Lahpet Thoke", subTitle: "Myanmar Traditional Food", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", image: "laphatthoke transparent", bgColor: .brown),
        FoodBrain(id: 1, title: "Nan Pyar", subTitle: "Myanmar Traditional Food", description: "Lorem Ipsum is simply dummy text of the pri, nting and typesetting industry. ", image: "laphatthoke transparent", bgColor: .green),
        FoodBrain(id: 2, title: "Mote Lone Yay Paw", subTitle: "Myanmar Traditional Food", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", image: "laphatthoke transparent", bgColor: .yellow)
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
