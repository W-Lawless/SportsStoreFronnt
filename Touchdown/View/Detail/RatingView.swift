//
//  RatingView.swift
//  Touchdown
//
//  Created by W Lawless on 4/4/21.
//

import SwiftUI

struct RatingView: View {
    
    //MARK: - PROPERTIES
    
    let sizes: [String] = ["XS","S","M","L","XL"]
    
    
    //MARK: - BODY
    
    var body: some View {
        HStack(alignment: .top, spacing: 3) {
            
            VStack(alignment: .leading, spacing: 3){
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 3){
                    ForEach(1...5, id: \.self) { item in
                        Button(action: {}) {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        }
                    }
                }
                
            }
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 3){
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 5){
                    ForEach(sizes, id:\.self) { size in
                        Button(action: {}) {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGray, lineWidth: 2)
                                )
                        }
                    }
                }
                
            }
            
            
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView()
    }
}
