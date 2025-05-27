import SwiftUI

struct musi1: View {
    var recebe: spo
    var body: some View {
        
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.green, .black]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            VStack{
                Spacer()
                AsyncImage(url: URL(string: recebe.capa)){ image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                } placeholder: {
                    Color.gray
                }
                .frame(width:  200, height: 250)
                .padding(.top)
                .padding(.leading, 10)
                
                Text(recebe.name)
                    .foregroundColor(.white)
                Text(recebe.artist)
                    .foregroundColor(.white)
                    Spacer()
                
                HStack{
                    Image(systemName: "shuffle")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                    Image(systemName: "backward.end.fill")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                    Image(systemName: "play.fill")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                    Image(systemName: "forward.end.fill")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                    Image(systemName: "repeat")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                    
                    
                }
                Spacer()
            }
            
            
        }
        
       
    }
}

#Preview {
    musi1(recebe: spo(id: 1, name: "Hell of a Night", artist: "Travis Scott", capa: "https://i1.sndcdn.com/artworks-000048622882-92hn84-t1080x1080.jpg"))
}
