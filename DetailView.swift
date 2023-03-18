//
//  DetailView.swift
//  Myanmar-Food
//
//  Created by Kaung Htet OO on 3/18/23.
//

import SwiftUI

struct DetailView: View {
    @Namespace var namespace
    @State var show = false
    var count = 3
    
    var body: some View {
        ZStack {
            ScrollView (showsIndicators: false){
                VStack {
                    if !show {
                       MenuView()
                            .onTapGesture {
                                withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                                    show.toggle()
                                }
                            }
                    }
                    
                    if !show {
                        MenuView()
                            .onTapGesture {
                                withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                                    show.toggle()
                                }
                            }
                    }
                    
                    if !show {
                        MenuView()
                            .onTapGesture {
                                withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                                    show.toggle()
                                }
                            }
                    }
                }
            }
            
            if show {
                FoodDetails(namespace: namespace, show: $show)
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
