import SwiftUI

struct Paginainicial: View {
    var body: some View {
        TabView{
            primeira()
                .badge(0)
                .tabItem{
                    Label("Inicio",
                          systemImage: "house")
                }
                .badge(0)
                .tabItem {
                    Label("Favoritos", systemImage: "star.circle")
                }
        }
    }
}

#Preview {
    Paginainicial()
}
