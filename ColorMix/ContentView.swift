//
//  ContentView.swift
//  ColorMix
//
//  Created by Marat Fakhrizhanov on 22.01.2025.
//

import SwiftUI

struct ContentView: View {
    
    let viewModel = ViewModel()
 
    
    var body: some View {
        
        NavigationStack {
            
            VStack(spacing: 20) {
                
                Text(viewModel.selectedColorName)
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 150, height: 150)
                    .foregroundStyle(.red)
                
                
                Text(" + ")
                    
                
                Text(viewModel.selectedColorNameTwo)
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 150, height: 150)
                    .foregroundStyle(.blue)
                
                
                Text(" = ")
                
                Text(viewModel.resultColor)
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
