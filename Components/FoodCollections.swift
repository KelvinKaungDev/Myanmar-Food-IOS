//
//  SwiftUIView.swift
//  
//
//  Created by Kaung Htet OO on 3/17/23.
//

import SwiftUI

struct FoodCollections: View {
    
    @Binding var show : Bool
    
    var id : Int
    var img : String
    var title : String
    var subTitle : String
    var description : String
    
    var body: some View {
        VStack {
            Spacer()
            VStack (alignment: .leading, spacing: 12) {
                Text(title)
                    .font(.largeTitle.weight(.bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(subTitle.uppercased())
                    .font(.footnote.weight(.semibold))
                Text("\(description ) and \(id)")
            }
            .padding(15)
            .background(
                Rectangle()
                    .fill(.ultraThinMaterial)
                    .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                    .blur(radius: 0)
            )
        }
        .foregroundColor(.white)
        .background(
            Image(img)
                .resizable()
                .aspectRatio(contentMode: .fill)
        )
        .mask(
            RoundedRectangle(cornerRadius: 30, style: .continuous)
        )
        .padding(10)
        .frame(width: 320, height: 550)
    }
}

//struct SwiftUIView_Previews: PreviewProvider {
//
//    static var previews: some View {
//        FoodCollections(show: .constant(true),img: "",title: "", subTitle: "", description: "")
//    }
//}
