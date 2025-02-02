//
//  ChooseView.swift
//  ColorMix
//
//  Created by Marat Fakhrizhanov on 22.01.2025.
//

import SwiftUI

struct ChooseView: View {
    
    
    @State private var isPresented: Bool = false
    
    var viewModel: ViewModel
    var mixColorNumber: Int // Если 1 - то первое число меняем во воью моджел / Если 2 то второе число меняем / передаем
    
    @State private var redColorValue: String = ""
    @State private var greenColorValue: String = ""
    @State private var blueColorValue: String = ""
    
    @State var choosedColor: Color = .blue
    @State var choosedColorName: String = ""
    
    var body: some View {
        
        
        VStack {
            Text("Choose color for mix:")
            
            List(0..<viewModel.colors.count, id: \.self) { index in
                
                HStack {
                    Button(action: {
                        
                        viewModel.useRGBColorOne = false
                        
                        choosedColorName = viewModel.colorNames[index]
                        choosedColor = viewModel.colors[index]
                        
                        print(choosedColor)
                        
                        print(choosedColorName)
                        
                        if mixColorNumber == 1 {
                            viewModel.selectedColorNameOne = choosedColorName
                            viewModel.selectedColorOne = choosedColor
                        } else {
                            viewModel.selectedColorNameTwo = choosedColorName
                            viewModel.selectedColorTwo = choosedColor
                        }
                    } ) {
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
                HStack {
                    Text("Red :")
                    Spacer()
                    TextField("0...255", text: $redColorValue)
                        .keyboardType(.numberPad)
                        .onChange(of: redColorValue) {
                            
                            if Double(redColorValue) ?? 0 > 255 { // runtime test !
                                isPresented = true
                                redColorValue = "1"
                            }
                            
                            
                            if mixColorNumber == 1 {
                                viewModel.selectedColorOneRGB.0 = (Double(redColorValue) ?? 0.0) / 255
                                viewModel.useRGBColorOne = true
                                print(redColorValue)
                            } else {
                                
                                
                                viewModel.selectedColorTwoRGB.0 = (Double(redColorValue) ?? 0.0) / 255
                                viewModel.useRGBColorTwo = true
                            }
                        }
                }
                                  
                HStack {
                    Text("Green :")
                    TextField("0...255", text: $greenColorValue)
                        .keyboardType(.numberPad)
                        .onChange(of: greenColorValue) {
                            
                           if Double(greenColorValue) ?? 0 > 255 { // runtime test !
                                isPresented = true
                                greenColorValue = "1"
                            }
                            
                            if mixColorNumber == 1 {
                                
                                
                                viewModel.selectedColorOneRGB.1 = (Double(greenColorValue) ?? 0.0) / 255
                                viewModel.useRGBColorOne = true
                            } else {
                                
                                
                                viewModel.selectedColorTwoRGB.1 = (Double(greenColorValue) ?? 0.0) / 255
                                viewModel.useRGBColorTwo = true
                            }
                        }

                }
                HStack{
                    Text("Blue : ")
                    TextField("0...255", text: $blueColorValue)
                        .keyboardType(.numberPad)
                        .onChange(of: blueColorValue) {
                            
                            if Double(blueColorValue) ?? 0 > 255 { // runtime test !
                                isPresented = true
                                blueColorValue = "1"
                            }
                            
                            if mixColorNumber == 1 {
                                
                                
                                viewModel.selectedColorOneRGB.2 = Double(blueColorValue) ?? 0.0 / 255
                                viewModel.useRGBColorOne = true
                            } else {
                                
                                
                                viewModel.selectedColorTwoRGB.2 = (Double(blueColorValue) ?? 0.0) / 255
                                viewModel.useRGBColorTwo = true
                            }
                        }

                }
            }
            .padding(.leading, 50)
            .alert(isPresented: $isPresented) {
                        Alert(
                            title: Text("Wrong format"),
                            message: Text("Inter value from range 0...255")
                        )
            }
        }
    }
}

//#Preview {
//    ChooseView( mixColorNumber: 1)
//}
