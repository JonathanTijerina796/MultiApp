//
//  MenuView.swift
//  CursoiOS2
//
//  Created by Jona on 11/07/25.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationStack{
            List{
                
                NavigationLink (destination:IMCView()) {
                    Text("Iniciar IMC Calculator")
                    
                }
                Text("App 2")
                Text("App 3")
                Text("App 4")
                Text("App 5")
              
            }
        }
    }
}

#Preview {
    MenuView()
}
