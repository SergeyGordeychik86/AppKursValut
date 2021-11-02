//
//  ContentView.swift
//  AppKursValut
//
//  Created by MacBook on 02.05.2021.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
        List() {
            Text("111")
            Cell()
           
            
            
       
               
//            .padding()
            
        }
        .navigationTitle(Text("Kurs"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
