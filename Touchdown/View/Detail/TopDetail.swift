//
//  TopDetail.swift
//  Touchdown
//
//  Created by W Lawless on 4/4/21.
//

import SwiftUI

struct TopDetail: View {
    
    //MARK: - PROPERTIES
    
    @EnvironmentObject var shop: Shop
    @State private var isAnim: Bool = false
    
    
    var body: some View {
        
        HStack(alignment:.center, spacing: 6){
            
            //PRICE
            
            VStack(alignment: .leading, spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            } //: VSTQ
            .offset(y: isAnim ? -50 : -75)
            
            Spacer()
            
            //PHOTO
            
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnim ? 0 : -35)
            
            
        } //: HSTQ
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnim.toggle()
            }
        })
        
        
    } //:BDY
}

struct TopDetail_Previews: PreviewProvider {
    static var previews: some View {
        TopDetail()
            .environmentObject(Shop())
    }
}
