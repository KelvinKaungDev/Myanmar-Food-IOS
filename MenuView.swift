//
//  MenuView.swift
//  Myanmar-Food
//
//  Created by Kaung Htet OO on 3/17/23.
//

import SwiftUI

struct MenuView: View {
    @Namespace var namespace
    @State var show = false
    var foods = Food().foodCollections()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(foods) { food in
                                CardView(title: food.title, description: food.description)
                            }
                        }
                        .padding(20)
                    }
                }

                VStack {
                    ForEach(foods) { food in
                        CardView(title: food.title, description: food.description)
                    }
                }
            }
        }
    }
//    @Namespace var namespace
//    @State var show = false
//    
//    var body: some View {
//        
//        FoodCollections(namespace: namespace, show: $show, img: "foodOne", title: "Mong-Hin-Gar", subTitle: "Myanmar Traditional Food", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been")
//    }
}


struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
