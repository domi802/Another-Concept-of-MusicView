//
//  NeumorphicImageButton.swift
//  IntroNeumorphicDesign
//
//  Created by Dominik Woźniak on 22/04/2022.
//

import SwiftUI

struct NeumorphicImageButton: View {
    
    @State private var isPressed: Bool = false
    
    private var systemName: String
    private var onTap: () -> Void
    
    private var size: CGSize
    
    init(systemName: String, size: CGSize = CGSize(width: 60, height: 60)  , onTap: @escaping () -> Void){
        self.systemName = systemName
        self.size = size
        self.onTap = onTap
    }
    
    var gray: Color{
        return  Color(hue: 0.0, saturation: 0.0, brightness: 0.527)
    }
    
    var white: Color{
        return Color.white
    }
    
    var body: some View {
        Button(action:{
            
            self.isPressed = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1){
                self.isPressed = false
                self.onTap()
            }
          
            
            self.onTap()
        }){
            Image(systemName: self.systemName)
                .resizable()
                .frame(width: self.size.width, height: self.size.height)
                .padding(20)
               // .foregroundColor(.red)
                .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.819))
            
        }.clipShape(Circle())
            .shadow(color: self.isPressed ? white : gray, radius: self.isPressed ? 4 : 8, x: 8, y: 8)
            .shadow(color: self.isPressed ? gray : white, radius: self.isPressed ? 4 : 8, x: -8, y: -8)
            .scaleEffect(self.isPressed ? 0.95 : 1.0)
           .animation(.spring())
    }
}

struct NeumorphicImageButton_Previews: PreviewProvider {
    static var previews: some View {
        NeumorphicImageButton(systemName: "heart.fill"){}
    }
}
