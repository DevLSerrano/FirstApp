//
//  ContentView.swift
//  FirstApp
//
//  Created by Leonardo Serrano on 18/10/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    var body: some View {
        HStack {
            NavigationView{
            Form {   Section {
                Text("Hello, world!")
                    .foregroundColor(Color.gray)
                    .padding()
                    .frame(width: 350.0)
                Text("Vamos testar algumas funções.")
                    .foregroundColor(Color.gray)
                    .padding()
                    .frame(width: 350.0)
                
            }
                
                if #available(iOS 15.0, *) {
                    Button("Mostrar Alerta") {
                        showingAlert = true
                    }
                    .alert("Mensagem de Alerta.", isPresented: $showingAlert) {
                        Button("OK", role: .cancel) { }
                        
                    }
                } else {
                    // Fallback on earlier versions
                }
            }
            .navigationTitle("Olá, Leonardo")
            }
          
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 

