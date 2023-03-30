import CoreFoundation
import CoreGraphics

struct FoodBrain : Identifiable, Hashable{
    var id: Int
    var title : String
    var subTitle : String
    var description : String
    var image : String
    
    init(id: Int, title: String, subTitle: String, description: String, image: String) {
        self.id = id
        self.title = title
        self.subTitle = subTitle
        self.description = description
        self.image = image
    }
}

