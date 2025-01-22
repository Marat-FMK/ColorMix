//
//  ChooseView.swift
//  ColorMix
//
//  Created by Marat Fakhrizhanov on 22.01.2025.
//

import SwiftUI



struct ChooseView: View {
    
    var selectedColor: String
    
    let viewModel = ViewModel()
    
    @State private var redColorValue: String = ""
    @State private var greenColorValue: String = ""
    @State private var blueColorValue: String = ""
    
    
    
    var body: some View {
        
        
        VStack {
            
            Text("Choose color for mix:")
            
            List(0..<viewModel.colors.count, id: \.self) { index in
                
                HStack {
                    Button(action: {} ) {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(viewModel.colors[index])
                            .frame(width: 90, height: 50)
                    }
                    Spacer()
                    Text(viewModel.colorNames[index])
                }
            }
            
            Text("RGB color for mix :")
            VStack(spacing: 20) {
                HStack{
                    Text("Red :")
                    Spacer()
                    TextField("0...255", text: $redColorValue)
                }
                HStack{
                    Text("Green :")
                    TextField("0...255", text: $greenColorValue)
                }
                HStack{
                    Text("Blue : ")
                    TextField("0...255", text: $blueColorValue)
                }
            }
            .padding(.leading, 50)
        }
    }
}

#Preview {
    ChooseView(selectedColor: "Red")
}
