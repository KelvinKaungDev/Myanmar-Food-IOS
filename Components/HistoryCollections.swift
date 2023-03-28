//
//  File.swift
//  
//
//  Created by Kaung Htet OO on 3/27/23.
//

import SwiftUI

struct HistoryCollections : View {
    
    var image : String
    var title : String
    var subtitle : String
    var description : String
    
    var body : some View {
        VStack {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .padding(.bottom)
            
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    
                    Text(title)
                        .font(.title)
                        .fontWeight(.black)
                    
                    Text(subtitle)
                        .font(.headline)
                        .fontWeight(.bold)
                    
                    Text(description)
                        .foregroundColor(.secondary)
                        .lineLimit(2)
                }
                .padding()
                Spacer()
            }
        }
        .cornerRadius(30)
        .overlay(RoundedRectangle(cornerRadius: 30).stroke(.brown,lineWidth : 1))
        .padding()
    }
}

