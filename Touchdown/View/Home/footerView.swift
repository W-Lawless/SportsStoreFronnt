//
//  footerView.swift
//  Touchdown
//
//  Created by W Lawless on 4/2/21.
//

import SwiftUI

struct footerView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("We offer the most cutting edge, comfortable, and durable football helmets at great prices.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text("Copyright (C) Lawless Sharpe All Rights Reserved")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        }
    }
}

struct footerView_Previews: PreviewProvider {
    static var previews: some View {
        footerView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
