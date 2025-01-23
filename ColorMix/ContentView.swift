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
                
                NavigationLink(destination: ChooseView( viewModel: viewModel, mixColorNumber: 1)) {
                                        RoundedRectangle(cornerRadius: 20)
                                            .frame(width: 150, height: 150)
                                            .foregroundStyle(viewModel.selectedColorOne)
                }
 
                
                Text(" + ")
                    
                
                Text(viewModel.selectedColorNameTwo)
                NavigationLink(destination: ChooseView( viewModel: viewModel, mixColorNumber: 2)) {
                                        RoundedRectangle(cornerRadius: 20)
                                            .frame(width: 150, height: 150)
                                            .foregroundStyle(viewModel.selectedColorTwo)
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
