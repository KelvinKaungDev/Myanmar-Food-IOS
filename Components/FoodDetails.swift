

import SwiftUI

struct FoodDetails: View {
    @Binding var show : Bool
    @State private var showVegan = false
    @State private var selectedTab = 0
       
    var img : String
    var title : String
    var subTitle : String
    var description : String
    
    var body: some View {
        ZStack {
            ScrollView {
                cover
                detail
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
        }.navigationBarBackButtonHidden()
    }
    
    var cover : some View {
        VStack{
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .frame(height: 250)
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
                .offset(y: 180)
                .padding(20)
            )
    }
    
    var detail : some View {
        VStack {
            VStack {
                Toggle(isOn: $showVegan) {
                    Text("Vegan")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
        
                if !showVegan {
                    Text("Ingredient")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)

                    Text("The list of signatories includes the names of more than 1,000 people alongside Musk, including Apple co-founder Steve Wozniak, Sapiens author Yuval Noah Harari, and some of AI’s most distinguished academics responsible for multiple breakthroughs in machine learning.")
                        .padding(.top, 20)
                    
                    Text("Process")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 20)

                    Text("The list of signatories includes the names of more than 1,000 people alongside Musk, including Apple co-founder Steve Wozniak, Sapiens author Yuval Noah Harari, and some of AI’s most distinguished academics responsible for multiple breakthroughs in machine learning. As of Tuesday, no OpenAI employees had signed the letter, although CEO Sam Altman’s name briefly appeared then disappeared from the list of signatories. At least four Google ")
                        .padding(.top, 20)
                } else {
                    Text("Ingredient for Vegan")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)

                    Text("The list of signatories includes the names of more than 1,000 people alongside Musk, including Apple co-founder Steve Wozniak, Sapiens author Yuval Noah Harari, and some of AI’s most distinguished academics responsible for multiple breakthroughs in machine learning. As of Tuesday, no OpenAI employees had signed the letter, although CEO Sam Altman’s name briefly appeared then disappeared from the list of signatories. At least four Google alongside Musk, including Apple co-founder Steve Wozniak, Sapiens author Yuval Noah Harari, and some of AI’s most distinguished academics responsible for multiple breakthroughs in machine learning. As of Tuesday, no OpenAI employees had signed the letter, although CEO Sam Altman’s name briefly appeared then disappeared from the list of signatories. At least four Google  ")
                }
            }
            .padding(20)
        }
        .padding(.top, 120)
    }
}

struct FoodDetails_Previews: PreviewProvider {

    static var previews: some View {
        FoodDetails(show: .constant(true), img: "", title: "", subTitle: "", description: "")
    }
}
