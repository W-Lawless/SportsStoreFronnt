//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by W Lawless on 4/4/21.
//

import SwiftUI

struct ProductDetailView: View {
    
    //MARK: - PROPERTIES
    
    @EnvironmentObject var shop: Shop
    
    //MARK: - BODY
    
    var body: some View {
        
        
        VStack(alignment: .leading, spacing: 5) {
            
            //MARK: - NAV
           
            NavbarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            //MARK: - HEADER
            
            HeaderDetailView()
                .padding(.horizontal)
            
            //MARK: - DETAIL TOP
            
            TopDetail()
                .padding(.horizontal)
                .zIndex(1)
            
            //MARK: - DETAIL BOTTOM
            
            
            VStack(alignment: .center, spacing: 0){
                
                //MARK: - DESCR
                
                RatingView()
                    .padding(.top, -25)
                    .padding(.bottom, 10)
                
                
                ScrollView(.vertical, showsIndicators: false){
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                } //:SCROLL
                
                //MARK: - UTIL
                
                OrderView()
                    .padding(.vertical, 10)
                
                
                //MARK: - BUY
                
                ButtonView()
                    .padding(.bottom, 20)
                
                Spacer()
            } //:VSTQ
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
        } //: VSTQ
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue
            )
        ).ignoresSafeArea(.all, edges: .all)
        
    } //: BODY
    
}

//MARK: - PREVIEW

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
        
    }
}
