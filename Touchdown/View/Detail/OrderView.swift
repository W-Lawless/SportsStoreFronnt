//
//  OrderView.swift
//  Touchdown
//
//  Created by W Lawless on 4/4/21.
//

import SwiftUI

struct OrderView: View {
    
    //MARK: - PROPERTIES
    
    @State private var counter: Int = 0
    
    var body: some View {
    
        HStack(alignment: .center, spacing: 6){
            
            Button(action: {
                if counter > 0 {
                    counter -= 1
                }
            }) {
                Image(systemName: "minus.circle")
            }
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button(action: {
                if counter < 100 {
                    counter += 1
                }
            }){
                Image(systemName: "plus.circle")
            }
        
           Spacer()
            
            Button(action: {}){
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            }
            
            
            
        } //:HSTQ
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
        
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
