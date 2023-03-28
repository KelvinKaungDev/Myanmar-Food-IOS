import SwiftUI

struct MenuView: View {
    @State var show = false
    @State var i : Int = 0
    
    var foods = Food().foodCollections()
    
    var body: some View {
        
        if show {
            let getFood = Food().getFoods(i: i)
            FoodDetails(show: $show, img: getFood.image, title: getFood.title, subTitle: getFood.subTitle, description: getFood.description)
        }
        
        if !show {
            NavigationView {
                    ZStack {
                        ScrollView( showsIndicators: false) {
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack (spacing: 20) {
                                    ForEach(Array(foods.enumerated()), id: \.offset) { index, food in
                                        GeometryReader { geometry in
                                            FoodCollections(show: $show, id: index, img: food.image, title: food.title, subTitle: food.subTitle, description: food.description)
                                                .rotation3DEffect(Angle(degrees: (Double(geometry.frame(in: .global).minX) - 40) / -20), axis: (x: 0, y: 10.0, z: 0))
                                        }
                                        .frame(width: 300, height: 550)
                                        .onTapGesture {
                                            withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                                                i = index
                                                show.toggle()
                                            }
                                        }
                                    }
                                }
                                .padding(30)
                            }
                            
                            Text("About Foods".uppercased())
                                .font(.title3)
                                .font(.footnote.bold())
                                .foregroundColor(.brown)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 20)
                            
                            ScrollView(.vertical, showsIndicators: false) {
                                VStack(spacing: 20) {
                                    ForEach(foods, id: \.self) { food in
                                        NavigationLink (destination: HistoryDetails(food: food)){
                                            HistoryCollections(image: food.image, title: food.title, subtitle: food.subTitle, description: food.description)
                                        }
                                    }
                                    .padding(20)
                                }
                            }
                        }
                        .navigationTitle("Burmese Food")
                        .foregroundColor(.brown)
                        .navigationBarTitleDisplayMode(.automatic)
                    }
                }
        }
        
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
