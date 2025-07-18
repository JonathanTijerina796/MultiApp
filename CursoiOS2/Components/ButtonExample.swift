//
//  ButtonExample.swift
//  CursoiOS2
//
//  Created by Jona on 10/07/25.
//

import SwiftUI

struct ButtonExample: View {
    var body: some View {
        Button("Hola, perín") {
        print("holiwi")
        }
        Button {
            print("qué tranza perrín")
        } label: {
            Text("hola")
                .frame(width: 100, height: 25)
                .background(Color.blue)
                .foregroundColor(.white)
                .border(Color.black)
                .cornerRadius(6)
                
        }

        }
    }
struct Counter: View {
    @State var subscribersNumber = 0
    var body: some View {
        Button (action: {
            subscribersNumber += 1
        }, label: {
            Text("Suscriptores: \(subscribersNumber)")
                .bold()
                .font(.title)
                .frame(width: 200, height: 50)
                .background(Color.red)
                .foregroundColor(.white)
                .border(Color.black)
                .cornerRadius(6)
                
        })

        }
    }



#Preview {
    Counter()
}
