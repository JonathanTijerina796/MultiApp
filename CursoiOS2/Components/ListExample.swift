//
//  ListExample.swift
//  CursoiOS2
//
//  Created by Jona on 18/07/25.
//

import SwiftUI

var pokemons = [
    Pokemon (name: "Pikachu"),
    Pokemon (name: "psyduck"),
    Pokemon (name: "snorlax"),
    Pokemon (name: "squirtle"),
    Pokemon (name: "rychu"),
    
]

var digimons = [
    Digimon(name: "Agumon"),
    Digimon(name: "jonamon"),
    Digimon(name: "irmamon"),
    Digimon(name: "irmamon"),
]

struct ListExample: View {
    var body: some View {
    /*         List{
         Text("prueba")
         Text("prueba")
         Text("prueba")
         Text("prueba")
         Text("prueba")
         
         }
        
        List{
            ForEach(pokemons, id: \.name) { pokemon in
                Text(pokemon.name)
            }
        }
        
        List(digimons){ digimon in
            Text(digimon.name)
        }*/
        List{
            Section(header: Text("Pokemons")){
                ForEach(pokemons, id:\.name) { pokemon in
                    Text(pokemon.name)
                }

                    }
            Section(header: Text("Digimons")){
                        ForEach(digimons){digimon in
                            Text(digimon.name)
                    
                }
                
            }
        }.listStyle(.insetGrouped)
        
    }
    
}

struct Pokemon{
    let name:String
}

struct Digimon: Identifiable{
    var id = UUID()
    let name:String
}

#Preview {
    ListExample()
}
