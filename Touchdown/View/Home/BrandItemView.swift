//
//  BrandItemView.swift
//  Touchdown
//
//  Created by W Lawless on 4/4/21.
//

import SwiftUI

struct BrandItemView: View {
    
    //MARK: - PROPERTIES
    
    let brand: Brand
    
    var body: some View {
        
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray, lineWidth: 1)
            )
        
    }
}

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
