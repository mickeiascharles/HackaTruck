import SwiftUI

struct noiteView: View {
    var body: some View {
        TabView{
                RosaView()
                .badge(0)
                .tabItem {
                    Label("rosa", systemImage: "paintbrush.fill")
                }
                AzulView()
                .badge(0)
                .tabItem {
                    Label("Azul", systemImage: "paintbrush.pointed.fill")
                }
                CinzaView()
                .badge(0)
                .tabItem{
                    Label("Cinza", systemImage: "paintpalette.fill")
                }
                ListaView()
                .badge(0)
                .tabItem{
                    Label("Lista", systemImage: "list.bullet")
                }
        }
    }
}

#Preview {
    noiteView()
}
