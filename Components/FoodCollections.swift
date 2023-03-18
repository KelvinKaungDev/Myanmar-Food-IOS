//
//  SwiftUIView.swift
//  
//
//  Created by Kaung Htet OO on 3/17/23.
//

import SwiftUI

struct FoodCollections: View {
    var namespace : Namespace.ID
    
    @Binding var show : Bool
    var img : String
    var title : String
    var subTitle : String
    var description : String
    
    var body: some View {
        VStack {
            Spacer()
            VStack {
                Text(title)
                    .font(.largeTitle.weight(.bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .matchedGeometryEffect(id: "title", in: namespace)
                Text(subTitle.uppercased())
                    .font(.footnote.weight(.semibold))
                    .matchedGeometryEffect(id: "subtitle", in: namespace)
                Text(description)
                    .matchedGeometryEffect(id: "description", in: namespace)
            }
            .padding(15)
            .background(
                Rectangle()
                    .fill(.ultraThinMaterial)
                    .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                    .blur(radius: 0)
                    .matchedGeometryEffect(id: "blur", in: namespace)
            )
        }
        .foregroundColor(.white)
        .background(
            Image(img)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .matchedGeometryEffect(id: "background", in: namespace)
        )
        .mask(
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .matchedGeometryEffect(id: "mask", in: namespace)
        )
        .padding(20)
        .frame(height: 300)
    }
}


struct SwiftUIView_Previews: PreviewProvider {
    @Namespace static var namespace

    static var previews: some View {
        FoodCollections(namespace: namespace, show: .constant(true), img: "", title: "", subTitle: "", description: "")
    }
}
