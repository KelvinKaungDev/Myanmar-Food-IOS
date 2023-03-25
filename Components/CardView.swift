//
//  SwiftUIView.swift
//  
//
//  Created by Kaung Htet OO on 3/19/23.
//

import SwiftUI

struct CardView: View {

    var title : String?
    var description : String?
    var image : String?
    
    var body: some View {
        VStack {
            Spacer()
            VStack(alignment: .leading, spacing: 16.0) {
                Text(title ?? "")
                    .font(.title)
                    .fontWeight(.bold)
                Text(description ?? "")
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
            Image(image ?? "")
                .resizable()
                .aspectRatio(contentMode: .fill)
        )
        .mask(
            RoundedRectangle(cornerRadius: 30, style: .continuous)
        )
        .padding(20)
        .frame(width: 350, height: 600)
    }
}

//struct CardView_Previews: PreviewProvider {
//
//    static var previews: some View {
//        CardView()
//    }
//}
