import SwiftUI
import CoreGraphics

struct FoodBrain : Identifiable, Hashable{
    
    var id: Int
    var title : String
    var subTitle : String
    var description : String
    var image : String
    var bgColor : Color
    var ingredientOne : [String]
    var ingredientTwo : [String]
    
    init(id: Int, title: String, subTitle: String, description: String, image: String, bgColor : Color, ingredientOne : [String], ingredientTwo : [String]) {
        self.id = id
        self.title = title
        self.subTitle = subTitle
        self.description = description
        self.image = image
        self.bgColor = bgColor
        self.ingredientOne = ingredientOne
        self.ingredientTwo = ingredientTwo
    }
}

