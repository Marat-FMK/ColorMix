//
//  ChooseView.swift
//  ColorMix
//
//  Created by Marat Fakhrizhanov on 22.01.2025.
//

import SwiftUI



struct ChooseView: View {
    
    
    
    @State private var redColorValue: String = ""
    @State private var greenColorValue: String = ""
    @State private var blueColorValue: String = ""
    
    let viewModel = ViewModel()
    var body: some View {
        
        VStack {
            
            Text("Choose color for mix:")
            
            List(viewModel.colors, id: \.self) { color in
                
                Button(action: {} ) {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(color))
                        .frame(width: 90, height: 50)
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
    ChooseView()
}
