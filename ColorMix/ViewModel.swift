//
//  ViewModel.swift
//  ColorMix
//
//  Created by Marat Fakhrizhanov on 22.01.2025.
//

import Foundation
import SwiftUI

@Observable
class ViewModel {

    let colorNames = [ "Red", "Green", "Blue"]
    let colors = [Color.red, Color.green, Color.blue]
    
    var selectedColorNameOne = "Red"
    var selectedColorNameTwo = "Blue"
    
    var useRGBColorOne = true
    var useRGBColorTwo = false
    
    var selectedColorOne: Color = .brown
    var selectedColorOneRGB: (Double,Double,Double) = (1/255, 1/255, 255/255)
    var selectedColorTwo: Color = .blue
    var selectedColorTwoRGB = (1.0, 0.0, 0.0)
        
    
    var resultColor: Color = .purple
    var resultColorName = "Purple"
    
    
}
