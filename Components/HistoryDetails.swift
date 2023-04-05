import SwiftUI

struct HistoryDetails : View {
    var food : FoodBrain
    
    var body : some View {
        ScrollView(.vertical,showsIndicators: false) {
            VStack {
                Image(food.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding(.bottom)
                
                HStack {
                    VStack(alignment: .leading, spacing: 5) {
                        
                        Text(food.title)
                            .font(.title)
                            .fontWeight(.black)
                        
                        Text(food.subTitle)
                            .font(.headline)
                            .fontWeight(.bold)
                        
                        Text(food.description)
                            .foregroundColor(.secondary)
                    }
                    .padding()
                    Spacer()
                }
            }
        }
    }
}
