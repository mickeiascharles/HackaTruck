//
//  AzulView.swift
//  Dia2
//
//  Created by Turma02-1 on 05/04/25.
//

import SwiftUI

struct AzulView: View {
    var body: some View {
        VStack{
            ZStack{
                Color.blue
                    .ignoresSafeArea(edges: .top)
                Circle()
                    .frame(width: 250)
                Image(systemName: "paintbrush.pointed.fill")
                    .foregroundColor(.blue)
                    .font(.system(size: 150))
            }
        }
    }
}

#Preview {
    AzulView()
}
