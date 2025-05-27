import SwiftUI

struct ContentView: View {
    @State private var distancia: String = ""
    @State private var tempo: String = ""
    @State private var velocidade: Double?
    
    var body: some View {
        ZStack {
            Color(.systemRed).edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Text("Digite a distância (km):")
                    .font(.headline)
                
                TextField("Distância", text: $distancia)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.decimalPad)
                    .padding(.horizontal, 40)
                
                Text("Digite o tempo (h):")
                    .font(.headline)
                
                TextField("Tempo", text: $tempo)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.decimalPad)
                    .padding(.horizontal, 40)
                
                Button(action: calcularVelocidade) {
                    Text("Calcular")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .padding(.horizontal, 80)
                }
                
                if let velocidade = velocidade {
                    Text(String(format: "%.2f km/h", velocidade))
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    
                    Image("guepardo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250, height: 250)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading, spacing: 5) {
                        legendaItem(cor: .green, texto: "TARTARUGA (0 - 9.9km/h)")
                        legendaItem(cor: .cyan, texto: "ELEFANTE (10 - 29.9km/h)")
                        legendaItem(cor: .yellow, texto: "AVESTRUZ (30 - 69.9km/h)")
                        legendaItem(cor: .orange, texto: "LEÃO (70 - 89.9km/h)")
                        legendaItem(cor: .red, texto: "GUEPARDO (90 - 130km/h)")
                    }
                    .padding()
                    .background(Color.black)
                    .cornerRadius(12)
                    .foregroundColor(.white)
                    .padding(.top, 20)
                }
                
                Spacer()
            }
            .padding(.top, 30)
        }
    }
    
    func calcularVelocidade() {
        guard let distancia = Double(distancia),
              let tempo = Double(tempo),
              tempo != 0 else {
            velocidade = nil
            return
        }
        
        velocidade = distancia / tempo
    }
    
    func legendaItem(cor: Color, texto: String) -> some View {
        HStack {
            Circle()
                .fill(cor)
                .frame(width: 12, height: 12)
            Text(texto)
                .font(.caption)
        }
    }
}

#Preview {
    ContentView()
}
