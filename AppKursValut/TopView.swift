//
//  TopView.swift
//  AppKursValut
//
//  Created by MacBook on 02.05.2021.
//

import SwiftUI

struct TopView: View {
    var valute : ValuteResponse
//    @State var value: String = ""
    var body: some View {
        
      
            
            HStack {
                Text("\(valute.date)")
//                Text( "111 = \(value)")
//                    .padding()
//                TextField("qwer", text: $value)
                Image("noImage")
                    .resizable()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                VStack {
                    
                    Text("USD 1 $ =")
                    Text("2.55")
                        .font(.headline)
                    
                    HStack{
                        Text("")
                            .font(.subheadline)
                        
                    }
                
            }
        }
    }
}

    


struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView(valute: valuteResponse[1])
    }
}
