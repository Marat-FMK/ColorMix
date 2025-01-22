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
    
    var selectedColorName = "Red"
    var selectedColorNameTwo = "Blue"
    var resultColor = "Purple"
    
//    var chooseColorOne: String = "Red"
//    var chooseColorTwo: String = "Blue"
    
}
