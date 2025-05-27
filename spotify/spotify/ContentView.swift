import SwiftUI

struct spo : Identifiable{
    var id: Int
    var name: String
    var artist: String
    var capa: String
}

var arraymusicas = [
    
    spo(id: 1, name: "HIGHEST INT THE ROOM", artist: "Travis Scott", capa: "https://i.scdn.co/image/ab67616d0000b273e42b5fea4ac4c3d6328b622b"),
    
    spo(id: 2, name: "90210", artist: "Travis Scott", capa: "https://i.scdn.co/image/ab67616d0000b2736cfd9a7353f98f5165ea6160"),
    
    spo(id: 3, name: "Linha do Equador", artist: "Djavan", capa: "https://static-kbo-site.knbcdn.com.br/discografia/albuns/8/2/8/f/5cf9beed712df.jpg"),
    
    spo(id: 4, name: "FE!N", artist: "Travis Scott", capa: "https://m.media-amazon.com/images/I/51nMgSxPQeL.jpg"),
    
    spo(id: 5, name: "Samba Dobrado", artist: "Djavan", capa: "https://i.scdn.co/image/ab67616d0000b273bae34280d35e1200fd706a0e"),
    
    spo(id: 6, name: "Off the Wall", artist: "Michael Jackson", capa: "https://upload.wikimedia.org/wikipedia/pt/a/a6/Off_the_Wall.jpg"),
    
    spo(id: 7, name: "All of The Lights", artist: "Kanye West", capa: "https://i.scdn.co/image/ab67616d0000b273d9194aa18fa4c9362b47464f"),
]

struct ContentView: View {
    var body: some View {
        NavigationStack{
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.green, .black]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            
            ScrollView{
                VStack{
                    Image("capa")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250,height: 250)
                    
                    HStack{
                        Text("Minhas músicas").padding()
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                        Spacer()
                        
                        }
                    HStack{
                        Image("capa")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30,height: 30).padding()
                        Text("Mickeias Charles")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                        Spacer()
                        
                        
                    }
                    ForEach(arraymusicas){ musica in
                        NavigationLink(destination: musi1(recebe: musica)){
                            HStack{
                                AsyncImage(url: URL(string: musica.capa)){ image in
                                    image
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                } placeholder: {
                                    Color.gray
                                }
                                .frame(width:  70, height: 70)
                                .padding(.top)
                                .padding(.leading, 10)
                                
                                
                                VStack{
                                    HStack{
                                        Text(musica.name)
                                            .foregroundColor(.white)
                                            .bold()
                                        Spacer()
                                }
                                    HStack{
                                        Text(musica.artist)
                                            .foregroundColor(.white)
                                            .bold()
                                        Spacer()
                                }
                                    
                            
                            
                                    }
                                }
                            }
                        }
                    Text ("Sugestões")
                        .bold()
                        .foregroundColor(.white)
                        .font(.system(size: 25))
                        .padding(.leading, -170)
                    ScrollView(.horizontal){
                        HStack{
                            Image("djavan")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200, height: 150)
                            Image("Travis")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200, height:150)
                            Image("kendrick")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200, height: 150)
                        }
                            
                    }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
