//
//  File.swift
//  
//
//  Created by Kaung Htet OO on 3/18/23.
//

import CoreFoundation
import CoreGraphics

struct FoodBrain : Identifiable{
    var id: ObjectIdentifier?
    
    var title : String
    var subTitle : String
    var description : String
    var image : String
    
    init(title: String, subTitle: String, description: String, image: String) {
        self.title = title
        self.subTitle = subTitle
        self.description = description
        self.image = image
    }
}
