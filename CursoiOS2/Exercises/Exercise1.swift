//
//  ContentView.swift
//  CursoiOS
//
//  Created by Jona on 08/07/25.
//

import SwiftUI

struct Exercise1: View {
    var body: some View {
        VStack {
            HStack {
                Rectangle()
                    .foregroundColor(.blue)
                Rectangle()
                    .foregroundColor(.orange)
                Rectangle()
                    .foregroundColor(.yellow)
                
            }.frame(height: 100)
            VStack {
                Rectangle()
                    .foregroundColor(.orange)
                    .frame(height: 100)
                
            }
            HStack {
                Circle()
                    .foregroundColor(.green)
                    .frame(width: 140, height: 140)
                Rectangle()
                    .foregroundColor(.black)
                    .frame(width: 110, height: 280)
                Circle()
                    .foregroundColor(.blue)
                    .frame(width: 140, height: 140)
            }
            VStack {
                Rectangle()
                    .foregroundColor(.orange)
                    .frame(height: 100)
                
            }
            HStack {
                Rectangle()
                    .foregroundColor(.blue)
                Rectangle()
                    .foregroundColor(.orange)
                Rectangle()
                    .foregroundColor(.yellow)
                
            }.frame(height: 100)
            

        }
        .background(.red)
    }
        
}

    


#Preview {
    Exercise1()
}
