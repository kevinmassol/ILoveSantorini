//
//  FooterView.swift
//  ILoveSantorini
//
//  Created by KEVIN on 13/02/2023.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        HStack {
            Label("Je partage", systemImage: "square.and.arrow.up")
        }
        .foregroundColor(color)
        .frame(height: 30)
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
    }
}
