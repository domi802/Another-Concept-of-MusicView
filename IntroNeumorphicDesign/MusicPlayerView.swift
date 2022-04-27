//
//  MusicPlayerView.swift
//  IntroNeumorphicDesign
//
//  Created by Dominik Woźniak on 23/04/2022.
//

import SwiftUI

struct MusicPlayerView: View {
    
    @State private var sliderValue: Double = 0.5
    
    var body: some View {
        VStack{
            HStack{
                
                NeumorphicImageButton(systemName: "arrow.left", size: CGSize(width: 20, height: 20)){
                    
                }.foregroundColor(.black)
                Spacer()
                Text("Playing Now")
                Spacer()
                NeumorphicImageButton(systemName: "line.horizontal.3", size: CGSize(width: 20, height: 20)){
                    
                }.foregroundColor(.black)
            }.padding()
            
            
            ZStack {
                Image("art")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .clipShape(Circle())
                    .padding()
                    .shadow(color: Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)), radius: 8, x: 9, y: 9)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 8, x: -9, y: -9)
            }.clipShape(Circle().inset(by: 6))
                .shadow(color: Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)), radius: 10, x: 9, y: 9)
                .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 10, x: -9, y: -9)
            
            Spacer()
            
            Text("Lose it")
                .font(.largeTitle)
                .fontWeight(.bold)
                .lineLimit(nil)
            
            Text("Emminem")
                .font(.subheadline)
                .foregroundColor(Color.gray)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding(.vertical, 2.0)
            Slider(value: self.$sliderValue, in: 0...1, step: 0.1)
                .shadow(color: Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)), radius: 10, x: 6, y: 6)
                .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 10, x: -6, y: -6)
                .padding()
            Spacer()
            HStack{
                NeumorphicImageButton(systemName: "backward.fill", size: CGSize(width: 25, height: 25)){
                    
                }.foregroundColor(.black)
                Spacer()
                
                NeumorphicImageButton(systemName: "stop.fill", size: CGSize(width: 25, height: 25)){
                    
                }.foregroundColor(.black)
                
                Spacer()
                
                NeumorphicImageButton(systemName: "forward.fill", size: CGSize(width: 25, height: 25)){
                    
                }.foregroundColor(.black)
                
            }.padding()
        }.frame(maxWidth: .infinity,maxHeight: .infinity)
            .background(Color(hue: 0.531, saturation: 0.461, brightness: 0.963))
    }
}

struct MusicPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        MusicPlayerView()
    }
}
