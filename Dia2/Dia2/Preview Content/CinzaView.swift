//
//  CinzaView.swift
//  Dia2
//
//  Created by Turma02-1 on 05/04/25.
//

import SwiftUI

struct CinzaView: View {
    var body: some View {
        VStack{
            ZStack{
                Color.gray
                    .ignoresSafeArea(edges: .top)
                Circle()
                    .frame(width: 250)
                Image(systemName: "list.bullet")
                    .foregroundColor(.gray)
                    .font(.system(size: 150))
            }
        }
    }
}

#Preview {
    CinzaView()
}
