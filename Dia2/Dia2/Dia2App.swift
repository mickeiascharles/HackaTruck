//
//  Dia2App.swift
//  Dia2
//
//  Created by Turma02-1 on 05/04/25.
//

import SwiftUI

@main
struct Dia2App: App {
    var body: some Scene {
        DocumentGroup(newDocument: Dia2Document()) { file in
            ContentView(document: file.$document)
        }
    }
}
