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
                .padding(20)
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
                    .aspectRatio(CGSize(width: 350, height: 500), contentMode: .fill)
            )
            .mask(
                RoundedRectangle(cornerRadius: 30, style: .circular)
            )
        }
    }
}
