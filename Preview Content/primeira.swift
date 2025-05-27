import  SwiftUI

struct primeira: View {
    var body: some View {
        Color.black
            .ignoresSafeArea()
            .overlay(
                VStack {
                    HStack{
                        Text("Para Mickeias")
                            .foregroundStyle(.white)
                            .font(.title)
                            .padding(.leading, -15)
                        Image(systemName:"icloud.and.arrow.down")
                            .foregroundStyle(.white)
                            .padding(.leading, 120)
                        Image(systemName:"magnifyingglass")
                            .foregroundStyle(.white)
                    }
                    .padding(.top, -70)

                    HStack{
                        Text ("Séries")
                            .font(.system(size: 10))
                            .foregroundStyle(.gray)
                            .background(Color.black)
                            .bold()
                            .padding(.horizontal, 15)
                            .padding(.vertical, 8)
                            .clipShape(Capsule())
                            .overlay((Capsule())
                                .stroke(Color.gray, lineWidth: 2))
                        Text ("Filmes")
                            .font(.system(size: 10))
                            .foregroundStyle(.gray)
                            .background(Color.black)
                            .bold()
                            .padding(.horizontal, 15)
                            .padding(.vertical, 8)
                            .clipShape(Capsule())
                            .overlay((Capsule())
                                .stroke(Color.gray, lineWidth: 2))
                        Text ("Categorias")
                            .font(.system(size: 10))
                            .foregroundStyle(.gray)
                            .background(Color.black)
                            .bold()
                            .padding(.horizontal, 15)
                            .padding(.vertical, 8)
                            .clipShape(Capsule())
                            .overlay((Capsule())
                                .stroke(Color.gray, lineWidth: 2))
                    }
                    .padding(.leading, -140)
                    .padding(.top, -40)
                    
                    Image("got_poster")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 280)
                    
                    Text("Game of Thrones")
                        .foregroundStyle(.white)
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.top, 10)
                    HStack{
                        Button(action: {
                            print("Assistir clicado")})
                        {
                            Label("Assistir", systemImage:"play.fill" )
                                .font(.headline)
                                .frame(width: 150, height: 44)
                                .background(Color.white)
                                .foregroundColor(.black)
                                .cornerRadius(10)
                        }
                        Button(action: {
                            print("Adcionar na minha lista")})
                        {
                            Label("Minha lista", systemImage: "plus")
                                .font(.headline)
                                .frame(width: 150, height: 44)
                                .background(Color.white)
                                .foregroundColor(.black)
                                .cornerRadius(10)
                        }
                        .opacity(0.8)}
                    Text("Continuar assistindo como Mickeias")
                        .foregroundStyle(.white)
                        .padding(.top, 10)
                        .padding(.leading, -110)
                })
    }
}
    

#Preview {
    primeira()
}
