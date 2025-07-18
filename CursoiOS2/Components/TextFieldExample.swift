//
//  TextFieldExample.swift
//  CursoiOS2
//
//  Created by Jona on 10/07/25.
//

import SwiftUI

struct TextFieldExample: View {
    
    
    
    @State var email = ""
    @State var password = ""
    var body: some View {
        VStack {
            Image("swiftui")
                
            TextField("Escribe tu email", text: $email)
                .keyboardType(.emailAddress)
                .padding(16)
                .background(.gray.opacity(0.2))
                .cornerRadius(8)
                .padding(.horizontal, 32)
                .onChange(of: email) { oldValue, newValue in
                    print("el antiguo valor era \(oldValue) y el nuevo es \(newValue)")
                }
        }
        VStack {
            SecureField("Escribe tu contraseña", text: $password)
                .keyboardType(.emailAddress)
                .padding(16)
                .background(.gray.opacity(0.2))
                .cornerRadius(8)
                .padding(.horizontal, 32)
                .onChange(of: password) { oldValue, newValue in
                    print("el antoguo valor era \(oldValue) y el nuevo es \(newValue)")
                }
        }
        
    }
}

#Preview {
    TextFieldExample()
}



