//
//  ContentView.swift
//  ColorMix
//
//  Created by Marat Fakhrizhanov on 22.01.2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedColorName = "Red"
    @State private var selectedColorNameTwo = "Blue"
    @State private var resultColor = "Purple"
    
    let colorNames = [ "Red", "Green", "Blue", "Yellow", "Orange", "Purple","Brown"]
    
    var body: some View {
        
        NavigationStack {
            
            VStack(spacing: 20) {
                
                Text(selectedColorName)
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 150, height: 150)
                    .foregroundStyle(.red)
                
                
                Text(" + ")
                    
                
                Text(selectedColorNameTwo)
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 150, height: 150)
                    .foregroundStyle(.blue)
                
                
                Text(" = ")
                
                Text(resultColor)
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 150, height: 150)
                    .foregroundStyle(.purple)
                
            }
            .navigationTitle("ColorMix")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
