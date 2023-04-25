//
//  ContentView.swift
//  puntoVenta
//
//  Created by ISSC_611_2023 on 24/04/23.
//

import SwiftUI
import Combine
struct ContentView: View {
    @State private var name = ""
    @State private var apellido = ""
    @State private var edad = 0
    @State private var genero = ""
    @State private var email = ""
    @State private var contraseña = ""
    @State private var rol = ""
    @State var onlyNumbersValue: String = ""
    var body: some View {
        VStack {
            Text("Usuario").font(.largeTitle)
            Form{
                
                TextField("Nombre", text: $name).onChange(of: name) { value in
                    if !value.allSatisfy({ $0.isLetter }) {
                        name = String(value.filter { $0.isLetter })
                    }
                }
                TextField("Apellido", text: $apellido).onChange(of: apellido) { value in
                    if !value.allSatisfy({ $0.isLetter }) {
                        name = String(value.filter { $0.isLetter })
                    }
                }
                TextField("Edad", text: $onlyNumbersValue)
                        .keyboardType(.numberPad)
                        .onReceive(Just(onlyNumbersValue)) { value in
                            let filtered = "\(value)".filter { "0123456789".contains($0) }
                            if filtered != value {
                                self.onlyNumbersValue = "\(filtered)"
                            }
                        }
                    
                
                TextField("Genero", text: $genero).onChange(of: name) { value in
                    if !value.allSatisfy({ $0.isLetter }) {
                        genero = String(value.filter { $0.isLetter })
                    }
                }
                TextField("Correo", text: $email).onChange(of: name) { value in
                    if !value.allSatisfy({ $0.isLetter }) {
                        name = String(value.filter { $0.isLetter })
                    }
                }
                SecureField("Contraseña", text: $contraseña).onChange(of: name) { value in
                    if !value.allSatisfy({ $0.isLetter }) {
                        name = String(value.filter { $0.isLetter })
                    }
                }
                TextField("Rol", text: $rol).onChange(of: name) { value in
                    if !value.allSatisfy({ $0.isLetter }) {
                        name = String(value.filter { $0.isLetter })
                    }
                }
                
                
            }
         
            Button("Registrar"){
                        
                    }
        }
        
        .padding()
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


