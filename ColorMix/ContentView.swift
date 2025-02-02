//
//  ContentView.swift
//  ColorMix
//
//  Created by Marat Fakhrizhanov on 22.01.2025.
//

import SwiftUI

struct ContentView: View {
    
   var viewModel = ViewModel()
    
   var selectedTwo = ""
    
    var body: some View {
        
        NavigationStack {
            
            VStack(spacing: 20) {
                
                Text(viewModel.selectedColorNameOne)
                
                if viewModel.useRGBColorOne {
                    NavigationLink(destination: ChooseView( viewModel: viewModel, mixColorNumber: 1)) {
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 150, height: 150)
                            .foregroundStyle( Color(red: viewModel.selectedColorOneRGB.0, green: viewModel.selectedColorOneRGB.1, blue: viewModel.selectedColorOneRGB.2) )
                    }
                } else {
                    NavigationLink(destination: ChooseView( viewModel: viewModel, mixColorNumber: 1)) {
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 150, height: 150)
                            .foregroundStyle(viewModel.selectedColorOne)
                    }
                }
                
                Text(" + ")
                    
                
                Text(viewModel.selectedColorNameTwo)
                
                if viewModel.useRGBColorTwo {
                    
                    NavigationLink(destination: ChooseView( viewModel: viewModel, mixColorNumber: 2)) {
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 150, height: 150)
                            .foregroundStyle(Color(red: viewModel.selectedColorTwoRGB.0, green: viewModel.selectedColorTwoRGB.1, blue: viewModel.selectedColorTwoRGB.2))
                    }
                } else {
                    NavigationLink(destination: ChooseView( viewModel: viewModel, mixColorNumber: 2)) {
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 150, height: 150)
                            .foregroundStyle(viewModel.selectedColorTwo)
                    }
                }
                
                Text(" = ")
                
                Text(viewModel.resultColorName)
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
