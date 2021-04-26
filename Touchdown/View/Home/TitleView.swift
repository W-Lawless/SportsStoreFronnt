//
//  TitleView.swift
//  Touchdown
//
//  Created by W Lawless on 4/4/21.
//

import SwiftUI

struct TitleView: View {
    
    var title: String
    
    var body: some View {
        
        HStack{
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
        } //:HSTQ
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom,10)
        
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
