//
//  BodyView.swift
//  ILoveSantorini
//
//  Created by KEVIN on 10/02/2023.
//

import SwiftUI

struct BodyView: View {
        
    let text = "Santorin (en grec moderne : Σαντορίνη / Santoríni), aussi appelée Théra ou Thira (Θήρα / Thíra), est une île grecque située en mer Égée. C'est l'île la plus grande et la plus peuplée d'un petit archipel volcanique comprenant quatre autres îles, auquel on donne parfois son nom (archipel de Santorin).\nCette île et celles de Thirassía et Aspronissi sont les vestiges d'une ancienne île partiellement détruite vers 1610 av. J.-C. au cours de l'éruption minoenne.\nSantorin constitue l'un des principaux lieux touristiques de la Grèce, avec ses villages blancs à coupoles bleues perchés au sommet des falaises, ses panoramas sur les autres îles et ses sites archéologiques, notamment ceux de la ville antique de Théra et d'Akrotiri où furent retrouvées des ruines minoennes."
    
    var body: some View {
        VStack {
            HStack {
                Text("Avis:")
                    .italic()
                    .foregroundColor(color)
                ForEach(0..<5) { int in
                    let star = (int < 4) ? "star.fill" : "star"
                    Image(systemName: star)
                        .foregroundColor(color)
                }
            }
            .padding()
            ScrollView(.horizontal) {
                HStack {
                    ForEach(1..<6) { index in
                        RoundedRectangleImage(name: "photo_\(index)")
                    }
                }
            }
            ScrollView {
                Text(text)
                    .foregroundColor(color)
                    .padding(10)
            }
            .background(.secondary)
            .cornerRadius(20)
            .padding(20)
            Divider()
                .foregroundColor(color)
        }
    }
}

struct BodyView_Previews: PreviewProvider {
    static var previews: some View {
        BodyView()
    }
}
