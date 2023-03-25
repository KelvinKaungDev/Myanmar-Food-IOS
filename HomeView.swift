import SwiftUI

struct HomeView: View {
    var title = "Myanmar Traditional Foods"

    var body: some View {
        NavigationView {
            VStack {
                Text(title.uppercased())
                    .foregroundColor(.brown)
                    .font(.title2)
                    .padding(.top,100)
                
                Spacer()
                
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                
                Spacer()
                
                NavigationLink(destination: MenuView()) {
                    Text("START")
                        .frame(width: 280, height: 50, alignment: .center)
                        .foregroundColor(.white)
                        .background(.brown)
                        .cornerRadius(10)
                        .padding(.top, 50)
                }
                .padding(.bottom, 150)
            }
        }
    }
}
    
struct HomeView_Previews: PreviewProvider {

    static var previews: some View {
        HomeView()
    }
}
