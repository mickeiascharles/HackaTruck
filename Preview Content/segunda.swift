import SwiftUI

struct segunda: View {
    var body: some View {
        HStack(spacing: 20) {
            VStack(alignment: .leading, spacing: 15) {
                Image("captain_holt_scene")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 120)
                    .cornerRadius(8)
                
                Text("Brooklyn Nine-Nine")
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Text("2021 | 8 temporadas")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Button(action: {
                    print("Assistir episódio clicado")
                }) {
                    Text("Assistir")
                        .font(.headline)
                        .frame(width: 120, height: 40)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                
                Text("Nesta comédia leve, detetives da 99ª delegacia de polícia de Nova York combatem crimes de todo tipo e causam ainda mais confusão.")
                    .font(.body)
                    .lineLimit(4)
            }
            .frame(maxWidth: 300)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

