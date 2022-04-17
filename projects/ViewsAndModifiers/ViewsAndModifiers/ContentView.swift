//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by John Kevin Losito on 4/13/22.
//

import SwiftUI

struct LargeBlueTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
    }
}

extension View {
    func largeBlueTitleStyle() -> some View {
        self.modifier(LargeBlueTitle())
    }
}

struct ContentView: View {
    var body: some View {
        Text("Custom View Modifier")
            .padding()
            .largeBlueTitleStyle()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
