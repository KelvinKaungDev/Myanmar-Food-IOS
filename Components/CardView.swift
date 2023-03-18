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
        VStack(alignment: .leading, spacing: 16.0) {
            Text(title ?? "")
                .font(.title)
                .fontWeight(.bold)
            Text(description ?? "")
        }
        .frame(width: 300, height: 500)
        .foregroundColor(.white)
        .padding(.all)
        .background(.black)
        .cornerRadius(30)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
