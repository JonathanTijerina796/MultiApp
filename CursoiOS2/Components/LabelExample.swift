//
//  LabelExample.swift
//  CursoiOS2
//
//  Created by Jona on 10/07/25.
//

import SwiftUI

struct LabelExample: View {
    var body: some View {
        VStack {
            Label("alaporra", image: "swiftui")
            Label("alaburra", systemImage: "figure.badminton")
            Label(
                title: { Text("SwiftUI") },
                icon: {
                    Image("swiftui")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 30)
                }
            )
        }
    }
}

#Preview {
    LabelExample()
}
