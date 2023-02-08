//
//  HeaderView.swift
//  ILoveSantorini
//
//  Created by KEVIN on 08/02/2023.
//

import SwiftUI

struct HeaderView: View {
    
    let color: Color = Color(red: 12 / 255, green: 95 / 255, blue: 175 / 255)
    
    var body: some View {
        VStack {
            Image("bg")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 225)
                .clipped()
            HStack(alignment: .bottom) {
                Text("I 💙 Santorini")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(color)
                Spacer()
                Image("flag")
                    .resizable()
                    .frame(width: 75, height: 75)
            }
            .offset(y: -45)
            Divider()
                .frame(height: 2)
                .overlay(color)
                .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
            Spacer()
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
