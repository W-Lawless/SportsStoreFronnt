//
//  ContentView.swift
//  Touchdown
//
//  Created by W Lawless on 3/29/21.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTIES
    
    @EnvironmentObject var shop: Shop
    
    
    //MARK: - BODY
    
    var body: some View {
        
        ZStack {
        
            //CONDITIONAL
            if shop.showingProduct == false && shop.selectedProduct == nil {
                
                VStack(spacing: 0) {
                    
                    NavbarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x:0, y:5 )
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing:0) {
                            
                            //MARK: - FEATURED
                            
                            FeatureTabView()
                                .padding(.vertical, 20)
                            
                            
                            //MARK: - CATEGORIES
                            
                            CategoryGridView()
                            
                            
                            //MARK: - TITLE
                            
                            TitleView(title: "Helmets")
                            
                            //MARK: - VGRID
                            
                            LazyVGrid(columns: gridLayout, alignment: .leading, spacing: 15, pinnedViews: []) {
                                ForEach(products) { product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            withAnimation(.easeOut) {
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            }
                                        }
                                } //: LOOP
                            } //: VGRID
                            .padding(15)
                            
                            
                            //MARK: - BRANDS
                            
                            TitleView(title: "Brands")
                            
                            BrandGridView()
                            
                            
                            //MARK: - PRODUCTS
                            
                            footerView()
                                .padding(.horizontal)
                        } //:VSTQ
                    } //:SCROLL
                    
                    
                } //:VSTQ
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
           
            } else { //:CONDITIONAL
                ProductDetailView()
            }
            
        } //:ZTSQ
        .ignoresSafeArea(.all, edges: .all)
        
    }
    
}


//MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
