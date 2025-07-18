//
//  ImageExample.swift
//  CursoiOS2
//
//  Created by Jona on 10/07/25.
//

import SwiftUI

struct ImageExample: View {
    var body: some View {
        Image("swiftui")
            .resizable()
            .frame(width: 100, height: 100)
            .scaledToFill()
            
        Image(systemName: "globe.americas")
        .resizable()
        .scaledToFit()
    }
}

#Preview {
    ImageExample()
}
