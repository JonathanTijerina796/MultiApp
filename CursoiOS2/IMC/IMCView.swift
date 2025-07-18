import SwiftUI

struct IMCView: View {
    @State var gender: Int = 0
    @State var height: Double = 150 // Para HeightCalculator
    @State var age: Int = 18
    @State var weight: Int = 50
    
    var body: some View {
        VStack {
            // Botones para seleccionar género
            HStack {
                ToggleButton(title: "Hombre", imageName: "figure.stand", gender: 0, selectedGender: $gender)
                ToggleButton(title: "Mujer", imageName: "figure.stand.dress", gender: 1, selectedGender: $gender)
            }
            
            // Componente para seleccionar altura
            HeightCalculator(selectedHeight: $height)
            HStack{
                CounterButton(text: "Edad", number: $age  )
                CounterButton(text: "Peso", number: $weight  )
            }
            
    // MARK: - Botón de Calcular IMC
            IMCCalculateButton(userWeight: Double(weight) , userHeight: Double(height))
            }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.backgroundApp)
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("IMC Calculator").foregroundColor(.white)
            }
        }
    }
}

struct IMCCalculateButton:View {
    let userWeight: Double
    let userHeight: Double
    var body: some View {
        NavigationStack {
            NavigationLink(
                destination:{destination:do {
                    IMCResult(userWeight: userWeight, userHeight: userHeight)
                }
                }){
                Text("Calcular").font(.title).bold().foregroundColor(.purple).frame(maxWidth: .infinity , maxHeight: 100) .background(.backgroundComponent)
            }
        }
    }
}

// MARK: - Botón de selección de género
struct ToggleButton: View {
    let title: String
    let imageName: String
    let gender: Int
    @Binding var selectedGender: Int
    
    var body: some View {
        let color = gender == selectedGender ? Color.backgroundComponentSelected : Color.backgroundComponent
        
        Button(action: {
            selectedGender = gender
        }) {
            VStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 35, height: 30)
                    .foregroundColor(.white)
                
                InformationText(text: title)
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(color)
        }
    }
}

// MARK: - Texto de información genérico
struct InformationText: View {
    let text: String
    
    var body: some View {
        Text(text)
    }
}

// MARK: - Texto para títulos
struct TitleText: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.title2)
            .foregroundColor(.gray)
    }
}

// MARK: - Componente para seleccionar altura
struct HeightCalculator: View {
    @Binding var selectedHeight: Double
    
    var body: some View {
        VStack {
            TitleText(text: "Altura")
            InformationText(text: "\(Int(selectedHeight))cm") .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
            Slider(value: $selectedHeight, in: 100...220, step: 1).accentColor(.white).padding(.horizontal, 16)
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity).background(.backgroundComponent)
        
    }
    
    // MARK: - Componente para seleccionar Edad y peso
    
}
struct CounterButton: View {
    let text:String
    @Binding var number: Int
    var body: some View {
        VStack {
            TitleText(text: text)
            InformationText(text: String(number)).font(.largeTitle).bold().foregroundColor(.white)
            
            HStack(spacing: 30) {
                // Botón de restar
                Button(action: {
                    if(number > 0){
                        number -= 1
                    }
                }) {
                    ZStack {
                        Circle()
                            .frame(width: 70, height: 70)
                            .foregroundColor(.blue)
                        Image(systemName: "minus")
                            .foregroundColor(.white)
                    }
                }
                .contentShape(Circle())
                
                // Botón de sumar
                Button(action: {
                    if (number < 300){
                        number += 1
                    }
                }) {
                    ZStack {
                        Circle()
                            .frame(width: 70, height: 70)
                            .foregroundColor(.blue)
                        Image(systemName: "plus")
                            .foregroundColor(.white)
                    }
                }
                .contentShape(Circle())
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.backgroundComponent)
    }
}


// MARK: - Preview
#Preview {
    IMCView()
}

