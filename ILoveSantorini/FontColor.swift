//
//  FontColor.swift
//  ILoveSantorini
//
//  Created by KEVIN on 13/02/2023.
//

import Foundation
import SwiftUI

let color: Color = Color(red: 12 / 255, green: 95 / 255, blue: 175 / 255)

class FontColor: ObservableObject {
    @Published var color = FontColor()
}
