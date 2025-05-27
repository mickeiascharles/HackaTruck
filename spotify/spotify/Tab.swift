import SwiftUI

struct Tab: View {
    var body: some View {
        TabView{
            ContentView()
                .badge(0)
                .tabItem { Label ("Inicio", systemImage: "house") }
        }
    }
}

#Preview {
    Tab()
}
