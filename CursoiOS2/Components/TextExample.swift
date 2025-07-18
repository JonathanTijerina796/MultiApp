
//
//  TextExample.swift
//  CursoiOS2
//
//  Created by Jona on 10/07/25.
//

import SwiftUI

struct TextExample: View {
    var body: some View {
        VStack{
            
        }
        Text("Hello, World!").fontWidth(.condensed)
        Text("custom").font(.system(size: 20, weight: .light, design: .default))
            .foregroundColor(.blue)
            .underline()
            .italic(true)
        Text("jonathan jonathan tjonathan jonathan")
            .frame(width: 150)
            .lineLimit(10)
            
            
    }
}

#Preview {
    TextExample()
}
