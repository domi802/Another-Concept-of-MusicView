//
//  ContentView.swift
//  IntroNeumorphicDesign
//
//  Created by Dominik Woźniak on 22/04/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            
            NeumorphicImageButton(systemName: "heart.fill"){
                //onTap event
            }
                .padding()
            
            Text("Hello, world!")
        
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(hue: 0.548, saturation: 0.178, brightness: 0.987))
    }
     
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MusicPlayerView()
    }
}
