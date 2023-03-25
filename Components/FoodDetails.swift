//
//  SwiftUIView.swift
//  
//
//  Created by Kaung Htet OO on 3/17/23.
//

import SwiftUI

struct FoodDetails: View {
    @Binding var show : Bool
    
    var img : String
    var title : String
    var subTitle : String
    var description : String
    
    var body: some View {
        ZStack {
            ScrollView {
                cover
            }
            .background(Color("background"))
            .ignoresSafeArea()
            
            Button {
                withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                    show.toggle()
                }
            } label: {
                Image(systemName: "xmark")
                    .font(.body.weight(.bold))
                    .foregroundColor(.secondary)
                    .padding(8)
                    .background(.ultraThinMaterial, in : Circle())
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
            .padding(30)
            .ignoresSafeArea()
        }
    }
    
    var cover : some View {
        VStack{
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .frame(height: 300)
        .padding(20)
        .foregroundColor(.white)
        .background(
            Image(img)
                .resizable()
                .aspectRatio(contentMode: .fill)
        )
        .mask(
            RoundedRectangle(cornerRadius: 30, style: .continuous)
        )
        .overlay (
            VStack (alignment: .leading, spacing: 12){
                Text(title)
                    .font(.largeTitle.weight(.bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(subTitle.uppercased())
                    .font(.footnote.weight(.semibold))
                Text(description)
                }
                .padding(20)
                .background(
                    Rectangle()
                        .fill(.ultraThinMaterial)
                        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                        .blur(radius: 0)

                )
                .offset(y: 200)
                .padding(20)
            )
    }
}

//struct FoodDetails_Previews: PreviewProvider {
//
//    static var previews: some View {
//        FoodDetails(show: .constant(true), img: "", title: "", subTitle: "", description: "")
//    }
//}
