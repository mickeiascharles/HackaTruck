import SwiftUI

struct ContentView: View {
    
    @StateObject var viewmodel = ViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 50) {
                    
                    Image("grifinoria")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(5)
                        .shadow(radius: 4)
                    
                    Text("ELENCO")
                        .foregroundStyle(.white)
                        .font(.system(size: 20))
                        .bold()
                        .shadow(radius: 10)
                    
                    ForEach(viewmodel.persona) { persona in
                        HStack(alignment: .center, spacing: 16) {
                            AsyncImage(url: URL(string: persona.image)) { phase in
                                if let image = phase.image {
                                    image
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 100, height: 100)
                                        .clipped()
                                        .cornerRadius(2)
                                } else {
                                    Rectangle()
                                        .fill(Color.gray.opacity(0.3))
                                        .frame(width: 100, height: 130)
                                        .cornerRadius(8)
                                }
                            }
                            
                            VStack(alignment: .center) {
                                Text(persona.name)
                                    .foregroundColor(.white)
                                    .bold()
                                    .font(.system(size: 20))
                                Text(persona.actor)
                                    .foregroundColor(.gray)
                                    .bold()
                                    .font(.system(size: 15))
                            }
                            Spacer()
                        }
                    }
                }
                .padding(40)
            }
            .background(
                Image("capa")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
            )
            .navigationBarHidden(true)
        }
        .onAppear {
            viewmodel.fetch()
        }
    }
}

#Preview {
    ContentView()
}
