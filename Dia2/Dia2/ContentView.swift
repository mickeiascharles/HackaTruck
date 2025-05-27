//
//  ContentView.swift
//  Dia2
//
//  Created by Turma02-1 on 05/04/25.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: Dia2Document

    var body: some View {
        noiteView()
    }
}

#Preview {
    ContentView(document: .constant(Dia2Document()))
}
