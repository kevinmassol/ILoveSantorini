//
//  RoundedRectangleImage.swift
//  ILoveSantorini
//
//  Created by KEVIN on 10/02/2023.
//

import SwiftUI

struct RoundedRectangleImage: View {
    
    var name: String
    
    var body: some View {
        Image(name)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 100, height: 100)
            .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

struct RoudedRectangleImage_Previews: PreviewProvider {
    static var previews: some View {
        RoundedRectangleImage(name: "photo_1")
            .previewLayout(.sizeThatFits)
    }
}
