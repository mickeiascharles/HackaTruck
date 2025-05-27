//
//  RosaView.swift
//  Dia2
//
//  Created by Turma02-1 on 05/04/25.
//

import SwiftUI

struct RosaView: View {
    var body: some View {
        VStack{
            ZStack{
                Color.pink
                    .ignoresSafeArea(edges: .top)
                Circle()
                    .frame(width: 250)
                Image(systemName: "paintbrush.fill")
                    .foregroundColor(.pink)
                    .font(.system(size: 150))
            }
        }
    }
}

#Preview {
    RosaView()
}
