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
    
    var selectedColorName = "Red"
    var selectedColorNameTwo = "Blue"
    var resultColor = "Purple"
    
    let colorNames = [ "Red", "Green", "Blue", "Yellow", "Orange", "Purple","Brown"]
    let colors = [Color.red, Color.green, Color.blue, Color.yellow, Color.orange, Color.purple, Color.brown]
    
    var chooseColorOne: String = "Red"
}
